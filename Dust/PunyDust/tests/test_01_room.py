"""Tests for the Room (starting location) in PunyDust."""

import pytest
from PunyTest.asserts import assert_at_room, assert_output_contains, assert_output_not_contains


@pytest.mark.room("room")
class TestRoom:
    """The player wakes up in a sparsely furnished room above the saloon."""

    def test_opening_text(self, game):
        """The game begins with the wake-up sequence."""
        output = game.run([])
        assert_output_contains(output, "You wake up slowly")
        assert_output_contains(output, "head rumbles mercilessly")

    def test_room_description(self, game):
        """LOOK shows the room description."""
        output = game.run(["look"])
        assert_output_contains(output, "sparsely furnished")
        assert_output_contains(output, "bed")
        assert_output_contains(output, "nightstand")
        assert_output_contains(output, "window")
        assert_output_contains(output, "Please enter INFO")

    def test_examine_bed(self, game):
        output = game.run(["examine bed"])
        assert_output_contains(output, "bed")

    def test_examine_window(self, game):
        output = game.run(["examine window"])
        assert_output_contains(output, "window")

    def test_examine_door(self, game):
        output = game.run(["examine door"])
        assert_output_contains(output, "door")

    def test_take_bag(self, game):
        """The bag on the nightstand can be picked up."""
        output = game.run(["take bag"])
        assert_output_contains(output, "Taken")

    def test_examine_bag_contents(self, game):
        """Opening the bag reveals its contents."""
        output = game.run(["take bag", "open bag"])
        assert_output_contains(output, "draft notice")
        assert_output_contains(output, "drawing")
        assert_output_contains(output, "revolver")
        assert_output_contains(output, "money")

    def test_smell_room(self, game):
        output = game.run(["smell"])
        # Should produce some response (not "I don't understand")
        assert_output_not_contains(output, "didn't understand")

    def test_go_down_to_saloon(self, game):
        """Going DOWN exits the room to the saloon."""
        output = game.run(["down"])
        assert_output_contains(output, "Saloon")


@pytest.mark.feature("info")
class TestInfo:
    """The INFO / HELP command."""

    def test_info_basic_commands(self, game):
        """INFO shows the basic command list."""
        output = game.run(["info"])
        assert_output_contains(output, "LOOK (L)")
        assert_output_contains(output, "EXAMINE")
        assert_output_contains(output, "TALK TO")

    def test_info_extended_help(self, game):
        """INFO includes the extended paragraphs about RUN, INV, etc."""
        output = game.run(["info"])
        assert_output_contains(output, "RUN")
        assert_output_contains(output, "INV")
        assert_output_contains(output, "SAVE")
        assert_output_contains(output, "HINT")

    def test_info_replayability_hint(self, game):
        """INFO mentions that new rooms unlock dialog options."""
        output = game.run(["info"])
        assert_output_contains(output, "talk to people several times")


@pytest.mark.feature("credits")
class TestCredits:
    """The global CREDITS command."""

    def test_credits_shows_acknowledgments(self, game):
        output = game.run(["credits"])
        assert_output_contains(output, "Many thanks to Olaf")
        assert_output_contains(output, "original German version Staub")
        assert_output_contains(output, "version Staub")
        assert_output_contains(output, "Stable Diffusion XL")


@pytest.mark.feature("run")
class TestRunCommand:
    """The custom RUN shortcut command."""

    def test_run_without_destination_lists_known_locations(self, game):
        output = game.run(["down", "run"])
        assert_output_contains(output, "You can RUN TO... these places:")
        assert_output_contains(output, "- Room")
        assert_output_contains(output, "- Saloon")

    def test_run_room_works_without_to(self, game):
        output = game.run(["down", "run room"])
        assert_at_room(output, "Room")
