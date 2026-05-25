"""Tests for Vault room: guard mechanics, bar prying, showdown, and ending."""

from __future__ import annotations

import pytest
from PunyTest.asserts import assert_output_contains, assert_output_not_contains, assert_at_room

# ---------------------------------------------------------------------------
# Navigation helpers (full chain duplicated from test_12 for independence)
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

_TO_CAVE_LIT = _SETUP_WITH_CROWBAR + [
    "s", "w", "s",             # store -> main st -> ranch -> wind pump
    "take rod",                # rod at r_Windpump
    "w",                       # hill chain
    "use crowbar with crevice",
    "use rod with crevice",    # flashback 2 -> F_BOULDER_REMOVED
    "e", "n", "e", "s",       # hill chain -> wind pump -> ranch -> main st -> saloon
    "take lamp", "pull chair",
    "talk to woman", "1", "0",  # ella topic 304 -> lamp permission
    "use chair", "take lamp", "stand",
    "n", "n",                  # saloon -> main st -> store
    "talk to Bill", "1", "0",  # topic 314: buy matches
    "take matches",
    "use matches on lamp",     # lamp lit
    "s", "w", "s", "w", "n",  # store -> main st -> ranch -> wind pump -> hill chain -> cave
]

_TO_CAVE_WITH_ROPE = _TO_CAVE_LIT + [
    "n",                       # cave blocked -> activates Bill 315
    "s", "e", "n", "e", "n",  # hill chain -> wind pump -> ranch -> main st -> store
    "talk to Bill", "1", "1", "0",  # topics 315 + 316 -> Marten 307+308
    "s", "ne",                 # main st -> barber
    "talk to Marten", "1", "1", "0",  # select 307 then 308
    "out", "e",                # main st -> gallows
    "take sand",               # activates Marten 309 + Bill 317
    "w", "ne",                 # main st -> barber
    "talk to Marten", "1", "1", "0",  # select 309 then 310 -> gives shovel
    "out", "e",                # main st -> gallows
    "use shovel on platform",  # F_PLATFORM_DUG
    "use crowbar on plate",  # F_PLATFORM_OPEN, HatchRope revealed
    "take coil",               # HatchRope (use 'coil' to avoid CS_NOOSE ambiguity)
    "w", "w", "s", "w", "n",  # gallows -> main st -> ranch -> wind pump -> hill chain -> cave
    "tie rope to rock",        # F_ROPE_TIED
]

# Enter Vault from Cave (requires lamp lit + rope tied)
_TO_VAULT = _TO_CAVE_WITH_ROPE + ["n"]

# Guard mechanics sequences
_GUARD_CROUCHING = _TO_VAULT + ["drop hankie"]
_GUARD_KO = _GUARD_CROUCHING + ["attack guard with crowbar"]

# Lucy freed (topic 400: pry bars via [1])
_LUCY_FREE = _GUARD_KO + ["talk to Lucy", "1", "0"]

# Both vault topics: 400 (free, [1]) then 401 (what happened, [1] again), F_LUCY_LISTENING set
# Thompson scene fires in callback, conversation auto-ends
_LUCY_LISTENING = _GUARD_KO + ["talk to Lucy", "1", "1"]

# Thompson/showdown scene fires during topic 401 callback
_SHOWDOWN = _LUCY_LISTENING

# ---------------------------------------------------------------------------
# Tests: Vault room
# ---------------------------------------------------------------------------

@pytest.mark.room("Vault")
class TestVault:
    """Vault room: entry, description, navigation locks."""

    def test_at_vault(self, game):
        out = game.run(_TO_VAULT)
        assert_at_room(out, "Vault")

    def test_vault_first_look_ledge(self, game):
        out = game.run(_TO_VAULT)
        assert_output_contains(out, "stone ledge")

    def test_vault_first_look_torches(self, game):
        out = game.run(_TO_VAULT)
        assert_output_contains(out, "torches")

    def test_vault_first_look_workers(self, game):
        out = game.run(_TO_VAULT)
        assert_output_contains(out, "dozen men")

    def test_vault_cant_go_west(self, game):
        out = game.run(_TO_VAULT + ["w"])
        assert_output_contains(out, "no way out")

    def test_vault_cant_go_south_before_free(self, game):
        out = game.run(_TO_VAULT + ["s"])
        assert_output_contains(out, "can't just leave Lucy")

    def test_vault_cant_go_east(self, game):
        out = game.run(_TO_VAULT + ["e"])
        assert_output_contains(out, "vault floor")


@pytest.mark.room("Vault")
@pytest.mark.feature("guard")
class TestVaultGuard:
    """Guard: crouching mechanic and knock-out sequence."""

    def test_vault_guard_visible(self, game):
        out = game.run(_TO_VAULT + ["x guard"])
        assert_output_contains(out, "pistol")

    def test_vault_attack_guard_not_crouching(self, game):
        out = game.run(_TO_VAULT + ["attack guard with crowbar"])
        assert_output_contains(out, "too far away")

    def test_vault_attack_guard_without_weapon(self, game):
        """Test attacking guard without weapon gives proper message."""
        out = game.run(_GUARD_CROUCHING + ["attack guard"])
        assert_output_contains(out, "too risky without a weapon")
        assert_output_contains(out, "open fight would certainly be noticed")
        assert_output_contains(out, "closer")

    def test_vault_talk_to_guard_not_a_good_idea(self, game):
        out = game.run(_TO_VAULT + ["talk to guard"])
        assert_output_contains(out, "Not a good idea")

    def test_vault_drop_hankie_crouches_guard(self, game):
        out = game.run(_GUARD_CROUCHING)
        assert_output_contains(out, "handkerchief")

    def test_vault_examine_guard_crouching(self, game):
        out = game.run(_GUARD_CROUCHING + ["x guard"])
        assert_output_contains(out, "inviting back")

    def test_vault_attack_guard_ko(self, game):
        out = game.run(_GUARD_KO)
        assert_output_contains(out, "POW!")

    def test_vault_guard_face_down_after_ko(self, game):
        out = game.run(_GUARD_KO + ["x guard"])
        assert_output_contains(out, "face down")

    def test_vault_drop_hankie_again_blocked(self, game):
        out = game.run(_GUARD_CROUCHING + ["drop hankie"])
        assert_output_contains(out, "already being looked at")


@pytest.mark.room("Vault")
@pytest.mark.feature("lucy")
class TestVaultLucy:
    """Lucy: freeing from cage, Michael introduction, south exit."""

    def test_vault_talk_lucy_free_them(self, game):
        out = game.run(_LUCY_FREE)
        assert_output_contains(out, "pry the bars")

    def test_vault_michael_introduced_on_free(self, game):
        out = game.run(_LUCY_FREE)
        assert_output_contains(out, "Michael")

    def test_vault_examine_michael_after_free(self, game):
        out = game.run(_LUCY_FREE + ["x Michael"])
        assert_output_contains(out, "reassuringly")

    def test_vault_cant_leave_south_after_free(self, game):
        out = game.run(_LUCY_FREE + ["s"])
        assert_output_contains(out, "leave Lucy and Michael")

    def test_vault_talk_lucy_what_happened(self, game):
        out = game.run(_LUCY_LISTENING)
        assert_output_contains(out, "don't have time")


@pytest.mark.room("Vault")
@pytest.mark.feature("showdown")
class TestVaultShowdown:
    """Showdown: Thompson scene, explosion, ending."""

    def test_vault_showdown_thompson_appears(self, game):
        out = game.run(_SHOWDOWN)
        assert_output_contains(out, "Thompson")

    def test_vault_showdown_east_is_lethal(self, game):
        out = game.run(_SHOWDOWN + ["e"])
        assert_output_contains(out, "WHITE LIGHT")

    def test_vault_showdown_hit_thompson(self, game):
        """Hitting Thompson during showdown is refused."""
        out = game.run(_SHOWDOWN + ["hit thompson with shovel"])
        assert_output_contains(out, "can't do that")

    def test_vault_showdown_shoot_men(self, game):
        """Shooting the men during showdown is lethal."""
        out = game.run(_SHOWDOWN + ["shoot men"])
        assert_output_contains(out, "WHITE LIGHT")

    def test_vault_showdown_shoot_barrels(self, game):
        """Shooting the barrels during showdown is lethal."""
        out = game.run(_SHOWDOWN + ["shoot barrels"])
        assert_output_contains(out, "WHITE LIGHT")

    def test_vault_showdown_examine_barrels(self, game):
        """Examining barrels shows distinct description."""
        out = game.run(_SHOWDOWN + ["x barrels"])
        assert_output_contains(out, "letters NG")

    def test_vault_showdown_hit_man(self, game):
        """Hitting 'man' during showdown targets the knocked-out guard."""
        out = game.run(_SHOWDOWN + ["hit man with crowbar"])
        assert_output_contains(out, "had enough")

    def test_vault_shoot_no_revolver_blocked(self, game):
        # Before showdown, shooting is blocked
        out = game.run(_TO_VAULT + ["shoot guard"])
        assert_output_contains(out, "quite a stir")

    def test_vault_showdown_up_is_lethal(self, game):
        """Going up during showdown is a death, not an exit."""
        out = game.run(_SHOWDOWN + ["u"])
        assert_output_contains(out, "WHITE LIGHT")

    def test_vault_showdown_south_is_lethal(self, game):
        """Going south during showdown is a death, not an exit."""
        out = game.run(_SHOWDOWN + ["s"])
        assert_output_contains(out, "WHITE LIGHT")

    def test_vault_showdown_up_stays_in_vault(self, game):
        """After death by fleeing up, player stays in Vault."""
        out = game.run(_SHOWDOWN + ["u", "look"])
        assert_at_room(out, "Vault")

    def test_vault_explosion_leads_to_sheriff(self, game):
        """After explosion, player wakes up in Sheriff's Office."""
        out = game.run(_SHOWDOWN + ["shoot wedge"])
        assert_at_room(out, "Sheriff's Office")

    def test_vault_explosion_ending_description(self, game):
        """Ending room description mentions Michael and Lucy."""
        out = game.run(_SHOWDOWN + ["shoot wedge"])
        assert_output_contains(out, "Michael and Lucy")


# ---------------------------------------------------------------------------
# Ending conversation (12 topics in Sheriff's Office after explosion)
# ---------------------------------------------------------------------------

# After explosion, Sheriff has ending talk array. 12 topics, always pick "1".
_ENDING_CONVERSATION = ["talk to Sheriff"] + ["1"] * 13

# Full ending: explosion + conversation + arrive at Steppe
_FULL_ENDING = _SHOWDOWN + ["shoot wedge"] + _ENDING_CONVERSATION


@pytest.mark.room("Sheriff's Office")
@pytest.mark.feature("ending")
class TestEnding:
    """Ending conversation in Sheriff's Office and transition to Steppe."""

    def test_ending_what_happened(self, game):
        out = game.run(_SHOWDOWN + ["shoot wedge", "talk to Sheriff", "1"])
        assert_output_contains(out, "saved their lives")

    def test_ending_cant_leave_during_conversation(self, game):
        out = game.run(_SHOWDOWN + ["shoot wedge", "out"])
        assert_output_contains(out, "things to discuss")

    def test_ending_talk_lucy_redirects_to_sheriff(self, game):
        out = game.run(_SHOWDOWN + ["shoot wedge", "talk to Lucy"])
        assert_output_contains(out, "What happened")

    def test_ending_talk_michael_redirects_to_sheriff(self, game):
        out = game.run(_SHOWDOWN + ["shoot wedge", "talk to Michael"])
        assert_output_contains(out, "What happened")

    def test_ending_full_conversation_reaches_steppe(self, game):
        out = game.run(_FULL_ENDING)
        assert_at_room(out, "Steppe")

    def test_ending_fin_text(self, game):
        out = game.run(_FULL_ENDING)
        assert_output_contains(out, "FIN")

    def test_ending_billy_in_steppe(self, game):
        out = game.run(_FULL_ENDING + ["x billy"])
        assert_output_contains(out, "gallop")

    def test_ending_steppe_cant_leave(self, game):
        out = game.run(_FULL_ENDING + ["w"])
        assert_output_contains(out, "can't go anywhere")

    def test_ending_steppe_cant_runto(self, game):
        """RunTo from Steppe is blocked."""
        out = game.run(_FULL_ENDING + ["run to saloon"])
        assert_output_contains(out, "no turning back")

    def test_ending_initial_topics(self, game):
        """Ending conversation starts with three topics."""
        out = game.run(_SHOWDOWN + ["shoot wedge", "talk to Sheriff"])
        assert_output_contains(out, "What happened")
        assert_output_contains(out, "cave")
        assert_output_contains(out, "Thompson")
