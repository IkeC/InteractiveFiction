"""Tests for the lamp/matches chain: Saloon lamp acquisition and lighting."""

from __future__ import annotations

import pytest
from PunyTest.asserts import assert_output_contains, assert_output_not_contains

# Base commands to leave the starting room with the bag
_ROOM = [
    "take bag", "down",
]

# Reach Main Street after coffee
_MAINSTREET = _ROOM + [
    "talk to woman", "1", "1", "1", "1", "1", "0",
    "drink coffee", "drink coffee", "take cookie", "out",
]

# Commands up through the full walkthrough to the second Saloon visit
# (after flashbacks, boulder removed, lamp chain begins)
_POST_SHERIFF = _MAINSTREET + [
    "w", "talk to woman", "1", "1", "2",   # Ranch -> flashback -> Sheriff
    "talk to Sheriff", "1", "1", "1", "1", "1", "0", "take bag", "out",
]

_SETUP_BARBER = _POST_SHERIFF + [
    "w", "w", "take hankie", "e", "e",     # mine
    "ne",   # barber
    "talk to barber", "1", "1", "1", "1", "1", "2", "0",
    "give cookie to Molly", "talk to Marten", "2", "0", "take Molly",
    "out",   # main street
]

_SETUP_WITH_CROWBAR = _SETUP_BARBER + [
    "n",   # store
    "talk to Bill", "1", "1", "1", "1", "1", "1", "1", "1", "1", "0",
    "s", "e", "n",   # main st -> gallows -> cemetery
    "examine crosses", "1", "2", "0",
    "s", "w", "n",   # back to store
    "talk to Bill", "1", "0",
    "s", "e", "n",   # gallows -> cemetery again
    "examine crosses", "1", "2", "0",
    "examine graves", "2", "0",
    "run to Bill",
    "talk to Bill", "1", "1", "0",
    "take crowbar",
]

# After boulder removal (flashback 2)
_SETUP_BOULDER_REMOVED = _SETUP_WITH_CROWBAR + [
    "s", "w", "s", "w",   # store -> main st -> ranch -> wind pump
    "w",   # hill chain
    "take rod",
    "use crowbar on boulder",
    "use rod on boulder",   # triggers flashback 2 -> player at hill chain
]

# Back at Saloon ready for lamp chain
_TO_SECOND_SALOON = _SETUP_BOULDER_REMOVED + [
    "e", "n", "e", "s",   # wind pump -> ranch -> main street -> saloon
]


@pytest.mark.room("Saloon")
@pytest.mark.feature("lamp")
class TestSaloonLamp:
    """Lamp acquisition chain in the Saloon."""

    def test_lamp_take_without_permission_fails(self, game):
        out = game.run(_TO_SECOND_SALOON + ["pull chair", "take lamp"])
        assert_output_contains(out, "What do you think you're doing there?")

    def test_take_lamp_activates_ella_topic_304(self, game):
        out = game.run(_TO_SECOND_SALOON + [
            "take lamp",
            "talk to woman",
        ])
        assert_output_contains(out, "May I borrow that lamp?")

    def test_ella_grants_lamp_permission(self, game):
        out = game.run(_TO_SECOND_SALOON + [
            "take lamp",
            "talk to woman", "1", "0",
        ])
        assert_output_contains(out, "You're welcome to take the lamp with you")

    def test_lamp_taken_after_permission_and_chair(self, game):
        out = game.run(_TO_SECOND_SALOON + [
            "take lamp",
            "pull chair",
            "talk to woman", "1", "0",
            "use chair",
            "take lamp",
        ])
        assert_output_contains(out, "You take the lamp off the nail.")

    def test_lamp_description_unlit(self, game):
        out = game.run(_TO_SECOND_SALOON + [
            "take lamp", "pull chair",
            "talk to woman", "1", "0",
            "use chair", "take lamp",
            "examine lamp",
        ])
        assert_output_contains(out, "It is not lit.")

    def test_turn_on_lamp_without_matches(self, game):
        out = game.run(_TO_SECOND_SALOON + [
            "take lamp", "pull chair",
            "talk to woman", "1", "0",
            "use chair", "take lamp",
            "turn on lamp",
        ])
        assert_output_contains(out, "You have nothing to light the lamp.")

    def test_light_lamp_is_understood(self, game):
        out = game.run(_TO_SECOND_SALOON + [
            "take lamp", "pull chair",
            "talk to woman", "1", "0",
            "use chair", "take lamp",
            "stand",
            "n", "n",
            "talk to Bill", "1", "0",
            "take matches",
            "s", "s", "w", "s", "w", "n",
            "light lamp",
            "examine lamp",
        ])
        assert_output_contains(out, "A cozy light spreads out.")
        assert_output_contains(out, "It is lit.")

    def test_talk_on_chair_blocked(self, game):
        out = game.run(_TO_SECOND_SALOON + [
            "take lamp", "pull chair",
            "talk to woman", "1", "0",
            "use chair", "take lamp",
            "talk to woman",
        ])
        assert_output_contains(out, "you might want to get off the chair first")

    def test_down_on_chair_gets_down_from_chair(self, game):
        out = game.run(_TO_SECOND_SALOON + [
            "take lamp", "pull chair",
            "talk to woman", "1", "0",
            "use chair", "take lamp",
            "down",
        ])
        assert_output_contains(out, "You get down from the chair.")

    def test_ella_topic_305_matches_hint(self, game):
        out = game.run(_TO_SECOND_SALOON + [
            "take lamp", "pull chair",
            "talk to woman", "1", "0",
            "use chair", "take lamp",
            "stand",   # dismount chair
            "n", "s",
            "talk to Ella",
        ])
        assert_output_contains(out, "Do you have anything to light the lamp?")

    def test_ella_topic_305_response(self, game):
        out = game.run(_TO_SECOND_SALOON + [
            "take lamp", "pull chair",
            "talk to woman", "1", "0",
            "use chair", "take lamp",
            "stand",
            "n", "s",
            "talk to Ella", "1", "0",
        ])
        assert_output_contains(out, "sure Bill still has some")

    def test_bill_topic_314_matches(self, game):
        out = game.run(_TO_SECOND_SALOON + [
            "take lamp", "pull chair",
            "talk to woman", "1", "0",
            "use chair", "take lamp",
            "stand",
            "n", "n",
            "talk to Bill",
        ])
        assert_output_contains(out, "Do you sell matches?")

    def test_bill_sells_matches(self, game):
        out = game.run(_TO_SECOND_SALOON + [
            "take lamp", "pull chair",
            "talk to woman", "1", "0",
            "use chair", "take lamp",
            "stand",
            "n", "n",
            "talk to Bill", "1", "0",
        ])
        assert_output_contains(out, "That'll be a dollar.")
        assert_output_contains(out, "small brown paper bag")

    def test_store_description_mentions_matches_on_counter_after_sale(self, game):
        out = game.run(_TO_SECOND_SALOON + [
            "take lamp", "pull chair",
            "talk to woman", "1", "0",
            "use chair", "take lamp",
            "stand",
            "n", "n",
            "talk to Bill", "1", "0",
            "look",
        ])
        assert_output_contains(out, "small brown envelope with matches on the counter")

    def test_take_matches(self, game):
        out = game.run(_TO_SECOND_SALOON + [
            "take lamp", "pull chair",
            "talk to woman", "1", "0",
            "use chair", "take lamp",
            "stand",
            "n", "n",
            "talk to Bill", "1", "0",
            "take matches",
            "examine matches",
        ])
        assert_output_contains(out, "A considerable number of matches")

    def test_use_matches_on_lamp_lights_it(self, game):
        out = game.run(_TO_SECOND_SALOON + [
            "take lamp", "pull chair",
            "talk to woman", "1", "0",
            "use chair", "take lamp",
            "stand",
            "n", "n",
            "talk to Bill", "1", "0",
            "take matches",
            "use matches on lamp",
        ])
        assert_output_contains(out, "A cozy light spreads out.")

    def test_lamp_description_lit(self, game):
        out = game.run(_TO_SECOND_SALOON + [
            "take lamp", "pull chair",
            "talk to woman", "1", "0",
            "use chair", "take lamp",
            "stand",
            "n", "n",
            "talk to Bill", "1", "0",
            "take matches",
            "use matches on lamp",
            "examine lamp",
        ])
        assert_output_contains(out, "It is lit.")
