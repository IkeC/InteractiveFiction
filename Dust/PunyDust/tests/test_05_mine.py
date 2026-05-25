"""Tests for the Mine room in PunyDust."""

import pytest
from PunyTest.asserts import assert_output_contains, assert_output_not_contains, assert_at_room

# Commands to reach Main Street from game start
_TO_MAINSTREET = [
    "take bag", "down",
    "talk to woman", "1", "1", "1", "1", "1", "0",
    "drink coffee", "drink coffee",
    "out",
]

# Commands to reach Sheriff, complete dialogue, leave, and go to Ranch
_TO_RANCH_AFTER_SHERIFF = _TO_MAINSTREET + [
    "w",  # Ranch
    "talk to woman", "1", "1", "2",  # triggers flashback
    "talk to Sheriff", "1", "1", "1", "1", "1", "0",  # Sheriff dialogue
    "take bag",
    "out",  # back to Main Street
    "w",  # Ranch (second visit)
]

# Commands to reach the Mine
_TO_MINE = _TO_RANCH_AFTER_SHERIFF + ["w"]


@pytest.mark.room("mine")
class TestMineArrival:
    """Arriving at the Mine for the first time."""

    def test_arrives_at_mine(self, game):
        """Going west from Ranch reaches the Mine."""
        output = game.run(_TO_MINE)
        assert_at_room(output, "Mine")

    def test_first_visit_description(self, game):
        """First visit shows the introductory text."""
        output = game.run(_TO_MINE)
        assert_output_contains(output, "a low ridge rises up")

    def test_mine_entrance_visible(self, game):
        """The mine entrance is described."""
        output = game.run(_TO_MINE)
        assert_output_contains(output, "entrance to the mine is lit")

    def test_guard_visible(self, game):
        """The armed man is mentioned in the room description."""
        output = game.run(_TO_MINE)
        assert_output_contains(output, "hollow-eyed man")

    def test_no_you_can_see_listing(self, game):
        """Objects already described in the room text should not be listed separately."""
        output = game.run(_TO_MINE)
        assert_output_not_contains(output, "You can see")

    def test_hankie_visible(self, game):
        """The white something by the shrub is visible on first arrival."""
        output = game.run(_TO_MINE)
        assert_output_contains(output, "something white flashes")


@pytest.mark.room("mine")
class TestMineScenery:
    """Examining scenery at the Mine."""

    def test_smell(self, game):
        output = game.run(_TO_MINE + ["smell"])
        assert_output_contains(output, "smells slightly of smoke")

    def test_examine_hill_chain(self, game):
        output = game.run(_TO_MINE + ["examine hill chain"])
        assert_output_contains(output, "stretches from north-east")

    def test_examine_mine(self, game):
        output = game.run(_TO_MINE + ["examine mine"])
        assert_output_contains(output, "empty carts and some torches")

    def test_examine_smoke(self, game):
        output = game.run(_TO_MINE + ["examine smoke"])
        assert_output_contains(output, "constantly billowing out")

    def test_examine_shrub(self, game):
        output = game.run(_TO_MINE + ["examine shrub"])
        assert_output_contains(output, "handkerchief lies next to")


@pytest.mark.room("mine")
class TestMineMan:
    """Interacting with the mine guard."""

    def test_examine_man(self, game):
        output = game.run(_TO_MINE + ["examine man"])
        assert_output_contains(output, "points his rifle at you")

    def test_examine_man_first_time(self, game):
        output = game.run(_TO_MINE + ["examine man"])
        assert_output_contains(output, "Get the hell out of here")

    def test_talk_to_man(self, game):
        output = game.run(_TO_MINE + ["talk to man"])
        assert_output_contains(output, "points his rifle at you")

    def test_shoot_man(self, game):
        output = game.run(_TO_MINE + ["shoot man"])
        assert_output_contains(output, "another way into the mine")


@pytest.mark.room("mine")
class TestMineHandkerchief:
    """Taking and examining the handkerchief."""

    def test_take_hankie(self, game):
        output = game.run(_TO_MINE + ["take hankie"])
        assert_output_contains(output, "You put the hankie")

    def test_examine_hankie(self, game):
        output = game.run(_TO_MINE + ["take hankie", "examine hankie"])
        assert_output_contains(output, "initials LT")

    def test_smell_hankie(self, game):
        output = game.run(_TO_MINE + ["take hankie", "smell hankie"])
        assert_output_contains(output, "lavender")

    def test_hankie_gone_after_taking(self, game):
        """After taking the hankie, the shrub description changes."""
        output = game.run(_TO_MINE + ["take hankie", "examine shrub"])
        assert_output_contains(output, "small shrub stands at the edge")

    def test_return_east(self, game):
        """Going east returns to Ranch."""
        output = game.run(_TO_MINE + ["e"])
        assert_at_room(output, "Ranch")
