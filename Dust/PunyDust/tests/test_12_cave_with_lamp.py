"""Tests for Cave with lit lamp: descriptions, descent block, rope chain, and Vault access."""

from __future__ import annotations

import pytest
from PunyTest.asserts import assert_output_contains, assert_output_not_contains, assert_at_room

# ---------------------------------------------------------------------------
# Navigation helpers
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
    "w", "w", "take hankie", "e", "e",    # mine
    "ne",                                  # barber
    "talk to barber", "1", "1", "1", "1", "1", "2", "0",
    "give cookie to Molly", "talk to Marten", "2", "0", "take Molly",
    "out",                                 # main street
]

_SETUP_WITH_CROWBAR = _SETUP_BARBER + [
    "w", "s", "w",                         # main st -> ranch -> wind pump -> hill chain
    "examine boulders",                    # molly discovers boulder -> chisel topic
    "e", "n", "e",                         # hill chain -> wind pump -> ranch -> main st
    "n",                                   # store
    "talk to Bill", "1", "1", "1", "1", "1", "1", "1", "1", "1", "0",
    "s", "e", "n",                         # main st -> gallows -> cemetery
    "examine crosses", "1", "2", "0",
    "s", "w", "n",                         # cemetery -> gallows -> main st -> store
    "talk to Bill", "1", "0",
    "s", "e", "n",                         # gallows -> cemetery (2nd visit)
    "examine crosses", "1", "2", "0",
    "examine graves", "2", "0",
    "run to Bill",
    "talk to Bill", "1", "1", "0",
    "take crowbar",                        # player at store with crowbar
]

# Correct boulder removal: get rod from Wind Pump, widen crevice, trigger flashback.
# After flashback player is back at Hill Chain with F_BOULDER_REMOVED set.
_TO_CAVE_LIT = _SETUP_WITH_CROWBAR + [
    "s", "w", "s",             # store -> main st -> ranch -> wind pump
    "take rod",                # rod lives at r_Windpump
    "w",                       # hill chain
    "use crowbar with crevice",  # sets F_CREVICE_WIDENED
    "use rod with crevice",    # doFlashback2 -> F_BOULDER_REMOVED, player at hill chain
    "e", "n", "e", "s",       # hill chain -> wind pump -> ranch -> main st -> saloon
    "take lamp", "pull chair",
    "talk to woman", "1", "0",  # ella topic 304 -> lamp permission
    "use chair", "take lamp", "stand",  # take lamp (activates bill 314)
    "n", "n",                  # saloon -> main st -> store
    "talk to Bill", "1", "0",  # topic 314: buy matches -> matches on counter
    "take matches",
    "use matches on lamp",     # lamp lit
    "s", "w", "s", "w", "n",  # store -> main st -> ranch -> wind pump -> hill chain -> cave
]

# Extends _TO_CAVE_LIT: full rope acquisition chain ending with rope tied in Cave.
_TO_CAVE_WITH_ROPE = _TO_CAVE_LIT + [
    # Trigger Bill 315 by attempting descent without rope
    "n",                       # cave blocked -> activates Bill 315
    "s", "e", "n", "e", "n",  # hill chain -> wind pump -> ranch -> main st -> store
    # Learn about rope
    "talk to Bill", "1", "1", "0",  # 315 (rope) + 316 (what for? -> Marten 307+308)
    # Marten explains rope location (gallows hatch)
    "s", "ne",                 # main st -> barber
    # after boulder discovery, 307=[1], 308=[2]
    "talk to Marten", "1", "1", "0",  # select 307 then 308
    # Visit Gallows to discover need for shovel
    "out", "e",                # main st -> gallows
    "take sand",               # activates Marten 309 (shovel) + Bill 317 via Examine
    # Get shovel from Marten
    "w", "ne",                 # main st -> barber
    # after boulder discovery, 309=[1], 310=[2]
    "talk to Marten", "1", "1", "0",  # select 309 then 310 -> gives shovel
    # Dig platform, open hatch, take rope
    "out", "e",                # main st -> gallows
    "use shovel on sand",  # dig platform with shovel -> F_PLATFORM_DUG
    "use crowbar on plate",  # open hatch -> F_PLATFORM_OPEN, HatchRope ~concealed
    "take coil",               # take HatchRope (use 'coil' to avoid CS_NOOSE ambiguity)
    # Tie rope in Cave
    "w", "w", "s", "w", "n",  # gallows -> main st -> ranch -> wind pump -> hill chain -> cave
    "tie rope to rock",        # F_ROPE_TIED
]


# ---------------------------------------------------------------------------
# Tests: Cave descriptions and behaviour with lit lamp
# ---------------------------------------------------------------------------

@pytest.mark.room("Cave")
@pytest.mark.feature("lamp")
class TestCaveWithLamp:
    """Cave descriptions and behaviour with lit lamp."""

    def test_at_cave(self, game):
        out = game.run(_TO_CAVE_LIT)
        assert_at_room(out, "Cave")

    def test_cave_description_shows_precipice(self, game):
        out = game.run(_TO_CAVE_LIT)
        assert_output_contains(out, "pointed boulder")
        assert_output_contains(out, "precipice")

    def test_cave_description_no_darkness_message(self, game):
        out = game.run(_TO_CAVE_LIT)
        assert_output_not_contains(out, "can hardly see")

    def test_examine_rock_with_lamp(self, game):
        out = game.run(_TO_CAVE_LIT + ["examine rock"])
        assert_output_contains(out, "edge of the precipice")

    def test_examine_precipice_with_lamp(self, game):
        out = game.run(_TO_CAVE_LIT + ["examine precipice"])
        assert_output_contains(out, "can't see the bottom")

    def test_smell_cave(self, game):
        out = game.run(_TO_CAVE_LIT + ["smell"])
        assert_output_contains(out, "smoke")

    def test_go_north_without_rope_blocked(self, game):
        out = game.run(_TO_CAVE_LIT + ["n"])
        assert_output_contains(out, "too steep")

    def test_go_down_without_rope_blocked(self, game):
        out = game.run(_TO_CAVE_LIT + ["d"])
        assert_output_contains(out, "too steep")

    def test_descent_attempt_activates_bill_315(self, game):
        out = game.run(_TO_CAVE_LIT + [
            "n",                           # blocked -> activates Bill 315
            "s", "e", "n", "e", "n",       # hill chain -> wind pump -> ranch -> main st -> store
            "talk to Bill",
        ])
        assert_output_contains(out, "I have to climb down somewhere")

    def test_bill_rope_answer(self, game):
        out = game.run(_TO_CAVE_LIT + [
            "n",
            "s", "e", "n", "e", "n",
            "talk to Bill", "1", "0",
        ])
        assert_output_contains(out, "fifty feet of a nice thick rope")

    def test_bill_rope_activates_marten_topic(self, game):
        out = game.run(_TO_CAVE_LIT + [
            "n",
            "s", "e", "n", "e", "n",
            "talk to Bill", "1", "0",  # 315 -> Bill 316 activated
            "talk to Bill", "1", "0",  # 316 -> Marten 307 activated
            "s", "ne",                 # main st -> barber
            "talk to Marten",
        ])
        assert_output_contains(out, "Were you there when the gallows were built?")

    def test_bill_rope_what_activates_marten_308(self, game):
        out = game.run(_TO_CAVE_LIT + [
            "n",
            "s", "e", "n", "e", "n",
            "talk to Bill", "1", "0",  # 315 -> Bill 316
            "talk to Bill", "1", "0",  # 316 -> Marten 307
            "s", "ne",                 # main st -> barber
            "talk to Marten", "1", "0",  # 307 -> Marten 308
            "talk to Marten",
        ])
        assert_output_contains(out, "Bill said there must have been a lot of rope left over")

    def test_marten_rope_where_answer(self, game):
        out = game.run(_TO_CAVE_LIT + [
            "n",
            "s", "e", "n", "e", "n",
            "talk to Bill", "1", "0",
            "talk to Bill", "1", "0",
            "s", "ne",
            "talk to Marten", "1", "1", "0",  # select 307 then 308
        ])
        assert_output_contains(out, "stuff in the hatch")


# ---------------------------------------------------------------------------
# Tests: Rope acquisition chain
# ---------------------------------------------------------------------------

@pytest.mark.room("Gallows")
@pytest.mark.feature("rope")
class TestRopeChain:
    """Shovel acquisition, platform dig, hatch opening, and rope retrieval."""

    def test_take_sand_activates_shovel_topic(self, game):
        """Trying to take sand at Gallows activates Marten's shovel topic."""
        out = game.run(_TO_CAVE_LIT + [
            "n",
            "s", "e", "n", "e", "n",          # to store
            "talk to Bill", "1", "1", "0",    # 315 + 316
            "s", "ne",                         # barber
            "talk to Marten", "1", "1", "0",  # select 307+308
            "out", "e",                        # gallows
            "take sand",                       # activates Marten 309
            "w", "ne",                         # barber
            "talk to Marten",
        ])
        assert_output_contains(out, "You must have a shovel")

    def test_marten_gives_shovel(self, game):
        out = game.run(_TO_CAVE_LIT + [
            "n",
            "s", "e", "n", "e", "n",
            "talk to Bill", "1", "1", "0",
            "s", "ne",
            "talk to Marten", "1", "1", "0",  # select 307+308
            "out", "e",
            "take sand",
            "w", "ne",
            "talk to Marten", "1", "1", "0",  # select 309+310 -> shovel
        ])
        assert_output_contains(out, "large sturdy-looking shovel")

    def test_dig_platform_clears_sand(self, game):
        out = game.run(_TO_CAVE_LIT + [
            "n",
            "s", "e", "n", "e", "n",
            "talk to Bill", "1", "1", "0",
            "s", "ne",
            "talk to Marten", "1", "1", "0",  # select 307+308
            "out", "e",
            "take sand",
            "w", "ne",
            "talk to Marten", "1", "1", "0",  # select 309+310 -> shovel
            "out", "e",                        # gallows
            "purloin shovel",
            "use shovel on sand",
        ])
        assert_output_contains(out, "Piece by piece, you free the platform from the large pile of sand")
        assert_output_contains(out, "sturdy wooden board becomes visible")

    def test_take_sand_after_clearing_is_exhausted(self, game):
        out = game.run(_TO_CAVE_LIT + [
            "n",
            "s", "e", "n", "e", "n",
            "talk to Bill", "1", "1", "0",
            "s", "ne",
            "talk to Marten", "1", "1", "0",  # select 307+308
            "out", "e",                        # gallows
            "purloin shovel",
            "use shovel on sand",
            "take sand",
        ])
        assert_output_contains(out, "You've had enough sand for today.")


    def test_crowbar_opens_hatch(self, game):
        out = game.run(_TO_CAVE_LIT + [
            "n",
            "s", "e", "n", "e", "n",
            "talk to Bill", "1", "1", "0",
            "s", "ne",
            "talk to Marten", "1", "1", "0",  # select 307+308
            "out", "e",
            "take sand",
            "w", "ne",
            "talk to Marten", "1", "1", "0",  # select 309+310 -> shovel
            "out", "e",
            "use shovel on sand",
            "use crowbar on plate",
        ])
        assert_output_contains(out, "You pry one nail after another out of the platform")
        assert_output_contains(out, "broken fingernail later")
        assert_output_contains(out, "square, dark opening")

    def test_open_platform_description_with_lamp(self, game):
        out = game.run(_TO_CAVE_LIT + [
            "n",
            "s", "e", "n", "e", "n",
            "talk to Bill", "1", "1", "0",
            "s", "ne",
            "talk to Marten", "1", "1", "0",  # select 307+308
            "out", "e",
            "take sand",
            "w", "ne",
            "talk to Marten", "1", "1", "0",  # select 309+310 -> shovel
            "out", "e",
            "use shovel on sand",
            "use crowbar on plate",
            "examine platform",
        ])
        assert_output_contains(out, "You shine your lamp into the opening")
        assert_output_contains(out, "mice take flight")
        assert_output_contains(out, "bent nails")

    def test_open_hatch_look_does_not_invent_rope_sentence(self, game):
        out = game.run(_TO_CAVE_LIT + [
            "n",
            "s", "e", "n", "e", "n",
            "talk to Bill", "1", "1", "0",
            "s", "ne",
            "talk to Marten", "1", "1", "0",
            "out", "e",
            "take sand",
            "w", "ne",
            "talk to Marten", "1", "1", "0",
            "out", "e",
            "use shovel on sand",
            "use crowbar on plate",
            "look",
        ])
        assert_output_not_contains(out, "A coil of rope lies next to the open hatch in the platform")

    def test_examine_nails_after_hatch_open(self, game):
        out = game.run(_TO_CAVE_LIT + [
            "n",
            "s", "e", "n", "e", "n",
            "talk to Bill", "1", "1", "0",
            "s", "ne",
            "talk to Marten", "1", "1", "0",
            "out", "e",
            "take sand",
            "w", "ne",
            "talk to Marten", "1", "1", "0",
            "out", "e",
            "use shovel on sand",
            "use crowbar on plate",
            "x nails",
        ])
        assert_output_contains(out, "You don't see anything special about them")

    def test_examine_boards_after_hatch_open(self, game):
        out = game.run(_TO_CAVE_LIT + [
            "n",
            "s", "e", "n", "e", "n",
            "talk to Bill", "1", "1", "0",
            "s", "ne",
            "talk to Marten", "1", "1", "0",
            "out", "e",
            "take sand",
            "w", "ne",
            "talk to Marten", "1", "1", "0",
            "out", "e",
            "use shovel on sand",
            "use crowbar on plate",
            "x boards",
        ])
        assert_output_contains(out, "You don't see anything special about them")
    def test_open_platform_description_without_lamp_is_dark(self, game):
        out = game.run(_SETUP_WITH_CROWBAR + [
            "s", "w", "s",             # store -> main st -> ranch -> wind pump
            "take rod",                  # rod lives at r_Windpump
            "w",                         # hill chain
            "use crowbar with crevice",
            "use rod with crevice",      # doFlashback2 -> F_BOULDER_REMOVED, back at hill chain
            "e", "n", "e", "e",     # hill chain -> wind pump -> ranch -> main st -> gallows
            "take sand",                 # activates Marten shovel topic
            "w", "ne",                 # gallows -> main street -> barber
            "talk to Marten", "1", "1", "0",  # get shovel
            "out", "e",                # barber -> main street -> gallows
            "use shovel on sand",
            "use crowbar on plate",
            "examine platform",
        ])
        assert_output_contains(out, "It's too dark to see what's in there")

    def test_rope_takeable_after_hatch_open(self, game):
        out = game.run(_TO_CAVE_LIT + [
            "n",
            "s", "e", "n", "e", "n",
            "talk to Bill", "1", "1", "0",
            "s", "ne",
            "talk to Marten", "1", "1", "0",  # select 307+308
            "out", "e",
            "take sand",
            "w", "ne",
            "talk to Marten", "1", "1", "0",  # select 309+310 -> shovel
            "out", "e",
            "use shovel on sand",
            "use crowbar on plate",
            "take coil", "x coil",  # take HatchRope ('coil' avoids CS_NOOSE ambiguity)
        ])
        assert_output_contains(out, "long, thick rope")

    def test_tie_rope_in_cave(self, game):
        out = game.run(_TO_CAVE_WITH_ROPE)
        assert_output_contains(out, "proper knot")

    def test_north_with_rope_tied_succeeds(self, game):
        out = game.run(_TO_CAVE_WITH_ROPE + ["n"])
        assert_at_room(out, "Vault")



