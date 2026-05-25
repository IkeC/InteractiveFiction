"""Tests for the Sheriff's Office in PunyDust."""

import pytest
from PunyTest.asserts import assert_output_contains, assert_output_not_contains, assert_at_room

# Commands to reach Ranch from game start
_TO_RANCH = [
    "take bag", "down",
    "talk to woman", "1", "1", "1", "1", "1", "0",
    "drink coffee", "drink coffee",
    "out", "w",
]

# Commands to trigger flashback and arrive at Sheriff's Office (locked up)
_TO_SHERIFF = _TO_RANCH + ["talk to woman", "1", "1", "2"]

# Commands to complete Sheriff dialogue and get released
_SHERIFF_DIALOGUE = [
    "talk to Sheriff", "1", "1", "1", "1", "1", "0",
]


@pytest.mark.room("sheriff")
class TestSheriffFlashback:
    """The flashback transition from Ranch to Sheriff's Office."""

    def test_flashback_triggers(self, game):
        """Completing Lucy's dialogue triggers the flashback and moves to Sheriff."""
        output = game.run(_TO_SHERIFF)
        assert_output_contains(output, "POW!")
        assert_output_contains(output, "Claire whirls around")
        assert_output_contains(output, "Ouch")
        assert_output_contains(output, "Enjoying a little nap")

    def test_flashback_arrives_at_sheriff(self, game):
        """After the flashback, the player is at Sheriff's Office."""
        output = game.run(_TO_SHERIFF + ["look"])
        assert_at_room(output, "Sheriff")


@pytest.mark.room("sheriff")
class TestSheriffLockedUp:
    """The player is locked up and must talk to the Sheriff before leaving."""

    def test_cant_take_bag_when_locked_up(self, game):
        """The Sheriff won't let you take your stuff while locked up."""
        output = game.run(_TO_SHERIFF + ["take bag"])
        assert_output_contains(output, "stuff back later")

    def test_cant_leave_when_locked_up(self, game):
        """The Sheriff won't let you leave while locked up."""
        output = game.run(_TO_SHERIFF + ["out"])
        assert_output_contains(output, "Stay here")

    def test_examine_sheriff(self, game):
        output = game.run(_TO_SHERIFF + ["examine sheriff"])
        assert_output_contains(output, "lean man")
        assert_output_contains(output, "piercing green eyes")
        assert_output_contains(output, "brass star")

    def test_examine_star(self, game):
        output = game.run(_TO_SHERIFF + ["examine star"])
        assert_output_contains(output, "sheriff's star")

    def test_room_description_locked(self, game):
        """Room description shows locked-up variant."""
        output = game.run(_TO_SHERIFF + ["look"])
        assert_output_contains(output, "standing in front of the two plank beds")


@pytest.mark.room("sheriff")
class TestSheriffDialogue:
    """The dialogue with Sheriff Dunder."""

    def test_full_dialogue(self, game):
        """Complete the full Sheriff dialogue and get released."""
        output = game.run(_TO_SHERIFF + _SHERIFF_DIALOGUE)
        assert_output_contains(output, "Deputy Miller found you")
        assert_output_contains(output, "mayor's daughter has disappeared")
        assert_output_contains(output, "Your stuff is on the table")

    def test_no_double_blank_lines(self, game):
        """Dialogue should have single blank lines, not double."""
        output = game.run(_TO_SHERIFF + ["talk to Sheriff", "1"])
        # A double blank line would appear as three consecutive newlines
        assert "\n\n\n" not in output.text, (
            "Double blank line found in Sheriff dialogue"
        )

    def test_can_take_bag_after_dialogue(self, game):
        """After completing dialogue, the player can take the bag."""
        output = game.run(_TO_SHERIFF + _SHERIFF_DIALOGUE + ["take bag"])
        assert_output_contains(output, "Taken")

    def test_can_leave_after_dialogue(self, game):
        """After completing dialogue and taking bag, the player can leave."""
        output = game.run(_TO_SHERIFF + _SHERIFF_DIALOGUE + ["take bag", "out"])
        assert_at_room(output, "Main Street")

    def test_must_take_bag_before_leaving(self, game):
        """Even after dialogue, must take bag before leaving."""
        output = game.run(_TO_SHERIFF + _SHERIFF_DIALOGUE + ["out"])
        assert_output_contains(output, "Take your stuff")


@pytest.mark.room("sheriff")
class TestSheriffScenery:
    """Scenery objects in the Sheriff's Office."""

    def test_smell(self, game):
        output = game.run(_TO_SHERIFF + ["smell"])
        assert_output_contains(output, "musty")

    def test_examine_plank_beds(self, game):
        output = game.run(_TO_SHERIFF + ["examine plank beds"])
        assert_output_contains(output, "wooden platforms")

    def test_examine_passageway(self, game):
        output = game.run(_TO_SHERIFF + ["examine passageway"])
        assert_output_contains(output, "holding cells")

    def test_examine_house(self, game):
        output = game.run(_TO_SHERIFF + ["examine house"])
        assert_output_contains(output, "see any more of the house")

    def test_room_description_free(self, game):
        """Room description after release shows free variant."""
        output = game.run(_TO_SHERIFF + _SHERIFF_DIALOGUE + ["look"])
        assert_output_contains(output, "Two plank beds are attached to the wall")
        assert_output_contains(output, "pulled his hat half over his face")
