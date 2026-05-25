"""Tests for the hint system — every hint condition covered.

Each test navigates from a fresh game session to the exact state that should
trigger one specific hint and asserts the correct response.
"""

from __future__ import annotations

import pytest
from PunyTest.asserts import assert_output_contains

# ---------------------------------------------------------------------------
# Shared navigation sequences (built incrementally, matching test_13 paths)
# ---------------------------------------------------------------------------

_ROOM = ["take bag", "down"]

_MAINSTREET = _ROOM + [
    "talk to woman", "1", "1", "1", "1", "1", "0",
    "drink coffee", "drink coffee", "take cookie", "out",
]

_POST_SHERIFF = _MAINSTREET + [
    "w", "talk to woman", "1", "1", "2",
    "talk to Sheriff", "1", "1", "1", "1", "1", "0", "take bag", "out",
]

_SETUP_BARBER = _POST_SHERIFF + [
    "w", "w", "take hankie", "e", "e",   # mine
    "ne",                                 # barber
    "talk to barber", "1", "1", "1", "1", "1", "2", "0",
    "give cookie to Molly", "talk to Marten", "2", "0", "take Molly",
    "out",                                # main street
]

_SETUP_WITH_CROWBAR = _SETUP_BARBER + [
    "w", "s", "w",                        # main st → ranch → wind pump → hill chain
    "examine boulders",                   # molly discovers boulder
    "e", "n", "e",                        # hill chain → wind pump → ranch → main st
    "n",                                  # store
    "talk to Bill", "1", "1", "1", "1", "1", "1", "1", "1", "1", "0",
    "s", "e", "n",                        # main st → gallows → cemetery
    "examine crosses", "1", "2", "0",    # F_BILLS_WIFE_FOUND set, topic 309 activated
    "s", "w", "n",                        # cemetery → gallows → main st → store
    "talk to Bill", "1", "0",            # topic 309 → F_BILLS_WIFE_NAMED
    "s", "e", "n",                        # store → main st → gallows → cemetery
    "examine crosses", "1", "2", "0",
    "examine graves", "2", "0",          # F_PINCENEZ_FOUND
    "run to Bill",
    "talk to Bill", "1", "1", "0",
    "take crowbar",                       # player at store with crowbar
]

# Lamp unlit: visit cave first (unlit, sets r_Cave visited), then acquire lamp+matches
_TO_CAVE_UNLIT = _SETUP_WITH_CROWBAR + [
    "s", "w", "s",            # store → main st → ranch → wind pump
    "take rod",
    "w",                      # hill chain
    "use crowbar with crevice",
    "use rod with crevice",   # flashback 2 → F_BOULDER_REMOVED, player at hill chain
    "n",                      # enter cave (dark) — marks r_Cave visited
    "s",                      # back to hill chain
    "e", "n", "e", "s",       # hill chain → wind pump → ranch → main st → saloon
    "take lamp", "pull chair",
    "talk to woman", "1", "0",   # ella lamp permission
    "use chair", "take lamp", "stand",
    "n", "n",                 # saloon → main st → store
    "talk to Bill", "1", "0",
    "take matches",
    # lamp NOT lit yet — player at store
]

_TO_CAVE_LIT = _SETUP_WITH_CROWBAR + [
    "s", "w", "s",
    "take rod",
    "w",
    "use crowbar with crevice",
    "use rod with crevice",
    "e", "n", "e", "s",
    "take lamp", "pull chair",
    "talk to woman", "1", "0",
    "use chair", "take lamp", "stand",
    "n", "n",
    "talk to Bill", "1", "0",
    "take matches",
    "use matches on lamp",    # lamp lit
    "s", "w", "s", "w", "n", # store → main st → ranch → wind pump → hill chain → cave
]

_TO_CAVE_WITH_ROPE = _TO_CAVE_LIT + [
    "n",                       # cave → blocked (activates Bill 315)
    "s", "e", "n", "e", "n",  # cave → hill chain → wind pump → ranch → main st → store
    "talk to Bill", "1", "1", "0",
    "s", "ne",
    "talk to Marten", "1", "1", "0",
    "out", "e",               # main st → gallows
    "take sand",              # F_PLATFORM_KNOWN set
    "w", "ne",                # gallows → main st → barber
    "talk to Marten", "1", "1", "0",  # get shovel
    "out", "e",               # main st → gallows
    "use shovel on platform",  # F_PLATFORM_DUG
    "use crowbar on plate",    # F_PLATFORM_OPEN
    "take coil",              # rope
    "w", "w", "s", "w", "n",  # gallows → main st → ranch → wind pump → hill chain → cave
    "tie rope to rock",
]

_TO_VAULT = _TO_CAVE_WITH_ROPE + ["n"]
_GUARD_CROUCHING = _TO_VAULT + ["drop hankie"]
_GUARD_KO = _GUARD_CROUCHING + ["attack guard with crowbar"]
_LUCY_FREE = _GUARD_KO + ["talk to Lucy", "1", "0"]
_SHOWDOWN = _GUARD_KO + ["talk to Lucy", "1", "1"]


# ---------------------------------------------------------------------------
# Tests
# ---------------------------------------------------------------------------

@pytest.mark.feature("hints")
class TestHints:
    """Every hint condition is verified with its own test."""

    def test_hint_game_near_complete(self, game):
        """Lucy in Sheriff's Office — game is practically over."""
        cmds = _SHOWDOWN + ["shoot wedge", "hint"]
        out = game.run(cmds)
        assert_output_contains(out, "You should be able to manage on your own from now on.")

    def test_hint_leave_the_room(self, game):
        """Saloon not yet visited: suggest leaving the starting room."""
        out = game.run(["hint"])
        assert_output_contains(out, "Leave the room.")

    def test_hint_take_bag(self, game):
        """Saloon visited, but bag not in player's possession."""
        out = game.run(["down", "hint"])
        assert_output_contains(out, "Take your bag with you.")

    def test_hint_go_outside(self, game):
        """Bag in player, Saloon visited, Main Street not yet visited."""
        out = game.run(["take bag", "down", "hint"])
        assert_output_contains(out, "Go outside and explore the area.")

    def test_hint_explore_area(self, game):
        """Main Street visited, Ranch not yet visited."""
        out = game.run(_MAINSTREET + ["hint"])
        assert_output_contains(out, "Explore the area in more detail.")

    def test_hint_find_mine(self, game):
        """Ranch visited, Mine not yet visited."""
        out = game.run(_MAINSTREET + ["w", "hint"])
        assert_output_contains(out, "Find the mine.")

    def test_hint_closer_look_at_mine(self, game):
        """Mine visited, hankie still in Mine (not taken). Requires sheriff sequence to access mine."""
        out = game.run(_POST_SHERIFF + ["w", "w", "hint"])
        assert_output_contains(out, "Take a closer look around the mine.")

    def test_hint_visit_barber(self, game):
        """Hankie taken from Mine, Barber not yet visited. Requires sheriff sequence to access mine."""
        out = game.run(_POST_SHERIFF + ["w", "w", "take hankie", "e", "e", "hint"])
        assert_output_contains(out, "Visit the barber.")

    def test_hint_find_another_way(self, game):
        """Barber visited (requires sheriff unlock), Hill Chain not visited."""
        cmds = _POST_SHERIFF + ["w", "w", "take hankie", "e", "e", "ne", "out", "hint"]
        out = game.run(cmds)
        assert_output_contains(out, "Find another way into the mine.")

    def test_hint_need_molly(self, game):
        """Hill Chain visited without Molly — boulder not yet discovered."""
        cmds = _POST_SHERIFF + [
            "w", "w", "take hankie", "e", "e",   # mine
            "ne", "out",                          # visit barber and back
            "w", "s", "w",                        # main st → ranch → wind pump → hill chain
            "hint",
        ]
        out = game.run(cmds)
        assert_output_contains(out, "You need Molly to find the mine entrance.")

    def test_hint_visit_store(self, game):
        """Boulder discovered, Store not yet visited."""
        cmds = _SETUP_BARBER + [
            "w", "s", "w",           # main st → ranch → wind pump → hill chain
            "examine boulders",      # F_BOULDER_DISCOVERED
            "e", "n", "e",           # hill chain → wind pump → ranch → main st
            "hint",
        ]
        out = game.run(cmds)
        assert_output_contains(out, "Visit the general store.")

    def test_hint_visit_cemetery(self, game):
        """Store visited, Cemetery not yet visited."""
        cmds = _SETUP_BARBER + [
            "w", "s", "w",
            "examine boulders",
            "e", "n", "e",
            "n", "s",                # visit store and back to main st
            "hint",
        ]
        out = game.run(cmds)
        assert_output_contains(out, "Visit the cemetery.")

    def test_hint_talk_to_bill(self, game):
        """Cemetery visited, Bill's wife not yet named."""
        cmds = _SETUP_BARBER + [
            "w", "s", "w",
            "examine boulders",
            "e", "n", "e",
            "n", "s",                # visit store
            "e", "n",                # gallows → cemetery (visit)
            "s", "w",                # gallows → main st
            "hint",
        ]
        out = game.run(cmds)
        assert_output_contains(out, "Talk to Bill.")

    def test_hint_find_pincenez(self, game):
        """Bill's wife named, pince-nez not yet found."""
        cmds = _SETUP_BARBER + [
            "w", "s", "w",
            "examine boulders",
            "e", "n", "e",
            "n",                     # store
            "talk to Bill", "1", "1", "1", "1", "1", "1", "1", "1", "1", "0",
            "s", "e", "n",           # main st → gallows → cemetery
            "examine crosses", "1", "2", "0",   # F_BILLS_WIFE_FOUND, topic 309 activated
            "s", "w", "n",           # cemetery → gallows → main st → store
            "talk to Bill", "1", "0",  # topic 309 → F_BILLS_WIFE_NAMED
            "s",                     # back to main st
            "hint",
        ]
        out = game.run(cmds)
        assert_output_contains(out, "Find Bill's pince-nez.")

    def test_hint_widen_crevice(self, game):
        """Pince-nez found, crevice not yet widened."""
        out = game.run(_SETUP_WITH_CROWBAR + ["hint"])
        assert_output_contains(out, "Try to widen the crevice at the boulder.")

    def test_hint_find_lever(self, game):
        """Crevice widened, no rod in hand, boulder not removed."""
        cmds = _SETUP_WITH_CROWBAR + [
            "s", "w", "s",           # store → main st → ranch → wind pump
            "w",                     # hill chain
            "use crowbar with crevice",  # F_CREVICE_WIDENED
            "hint",
        ]
        out = game.run(cmds)
        assert_output_contains(out, "Find something long and sturdy to use as a lever.")

    def test_hint_widen_more(self, game):
        """Crevice widened and rod in hand, but boulder not yet removed."""
        cmds = _SETUP_WITH_CROWBAR + [
            "s", "w", "s",           # store → main st → ranch → wind pump
            "take rod",
            "w",                     # hill chain
            "use crowbar with crevice",
            "hint",
        ]
        out = game.run(cmds)
        assert_output_contains(out, "Try to widen the crevice at the boulder even further.")

    def test_hint_explore_cave(self, game):
        """Boulder removed, Cave not yet visited."""
        cmds = _SETUP_WITH_CROWBAR + [
            "s", "w", "s",
            "take rod",
            "w",
            "use crowbar with crevice",
            "use rod with crevice",  # flashback 2 → F_BOULDER_REMOVED, player at hill chain
            "hint",
        ]
        out = game.run(cmds)
        assert_output_contains(out, "Explore the cave.")

    def test_hint_get_lamp(self, game):
        """Cave visited (without lamp), lamp not in player."""
        cmds = _SETUP_WITH_CROWBAR + [
            "s", "w", "s",
            "take rod",
            "w",
            "use crowbar with crevice",
            "use rod with crevice",
            "n",                     # enter cave (dark) — r_Cave visited
            "s",                     # back to hill chain
            "hint",
        ]
        out = game.run(cmds)
        assert_output_contains(out, "Get yourself a lamp.")

    def test_hint_light_lamp(self, game):
        """Lamp in player but not yet lit."""
        out = game.run(_TO_CAVE_UNLIT + ["hint"])
        assert_output_contains(out, "Light the lamp.")

    def test_hint_talk_marten_and_bill(self, game):
        """Lamp lit, Cave visited, sand not yet examined (F_PLATFORM_KNOWN clear)."""
        out = game.run(_TO_CAVE_LIT + ["hint"])
        assert_output_contains(out, "Talk to Marten and Bill.")

    def test_hint_get_shovel(self, game):
        """Sand examined (F_PLATFORM_KNOWN set), shovel not yet obtained."""
        cmds = _TO_CAVE_LIT + [
            "n",                     # try north (blocked) → activates Bill 315
            "s", "e", "n", "e", "n", # cave → hill chain → wind pump → ranch → main st → store
            "talk to Bill", "1", "1", "0",
            "s", "ne",
            "talk to Marten", "1", "1", "0",
            "out", "e",              # main st → gallows
            "take sand",             # F_PLATFORM_KNOWN set
            "hint",
        ]
        out = game.run(cmds)
        assert_output_contains(out, "Get a shovel to remove the sand from the platform.")

    def test_hint_open_platform(self, game):
        """Shovel in hand and platform known, but platform not yet opened."""
        cmds = _TO_CAVE_LIT + [
            "n",
            "s", "e", "n", "e", "n",
            "talk to Bill", "1", "1", "0",
            "s", "ne",
            "talk to Marten", "1", "1", "0",
            "out", "e",
            "take sand",             # F_PLATFORM_KNOWN
            "w", "ne",               # gallows → main st → barber
            "talk to Marten", "1", "1", "0",  # get shovel (topics 309 then 310)
            "out", "e",              # main st → gallows
            "hint",                  # shovel in player, F_PLATFORM_OPEN clear → hint 23
        ]
        out = game.run(cmds)
        assert_output_contains(out, "Open the platform under the gallows.")

    def test_hint_rappel_down(self, game):
        """Platform opened and rope tied, Vault not yet visited."""
        out = game.run(_TO_CAVE_WITH_ROPE + ["hint"])
        assert_output_contains(out, "Rappel down the cave.")

    def test_hint_distract_guard(self, game):
        """In Vault: guard not crouching and not knocked out."""
        out = game.run(_TO_VAULT + ["hint"])
        assert_output_contains(out, "Distract the guard with a suitable object.")

    def test_hint_knock_out_guard(self, game):
        """Guard crouching (hankie dropped), not yet knocked out."""
        out = game.run(_GUARD_CROUCHING + ["hint"])
        assert_output_contains(out, "Knock the guard out.")

    def test_hint_talk_to_lucy(self, game):
        """Guard knocked out, Lucy not yet freed."""
        out = game.run(_GUARD_KO + ["hint"])
        assert_output_contains(out, "Talk to Lucy and Michael.")

    def test_hint_use_weapon(self, game):
        """Lucy freed from cage, not yet in Sheriff's Office."""
        out = game.run(_LUCY_FREE + ["hint"])
        assert_output_contains(out, "It's time to use your weapon.")
