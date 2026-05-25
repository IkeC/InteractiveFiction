"""Tests for the Saloon in PunyDust."""

import pytest
from PunyTest.asserts import assert_output_contains, assert_output_not_contains


@pytest.mark.room("saloon")
class TestSaloon:
    """The saloon on the ground floor – Molly serves coffee."""

    def test_saloon_description(self, game):
        output = game.run(["down", "look"])
        assert_output_contains(output, "Saloon")

    def test_examine_woman(self, game):
        output = game.run(["down", "examine woman"])
        assert_output_contains(output, "woman")

    def test_examine_counter(self, game):
        output = game.run(["down", "examine counter"])
        assert_output_contains(output, "counter")

    def test_talk_to_woman(self, game):
        """Talking to the woman offers dialogue choices."""
        output = game.run(["down", "talk to woman"])
        assert_output_not_contains(output, "didn't understand")

    def test_ask_tell_give_show_redirect_to_talk(self, game):
        output = game.run([
            "down",
            "ask woman",
            "tell woman",
            "ask woman about coffee",
            "tell woman about coffee",
            "give woman",
            "show woman",
        ])
        assert_output_contains(output, "Just TALK TO them instead.")
        assert_output_not_contains(output, "didn't understand")
        assert_output_not_contains(output, "There is no reply")

    def test_drink_coffee(self, game):
        """After ordering coffee, you can drink it."""
        output = game.run([
            "down",
            "talk to woman",
            "1",  # How are you doing?
            "1",  # Looks wild in here.
            "1",  # A coffee please.
            "1",  # There was a fight?
            "1",  # Mifflin? Doesn't ring a bell.
            "0",  # End
            "drink coffee",
        ])
        assert_output_not_contains(output, "didn't understand")

    def test_exit_saloon(self, game):
        """Going OUT reaches Main Street (after bag + coffee)."""
        output = game.run([
            "take bag", "down",
            "talk to woman", "1", "1", "1", "1", "1", "0",
            "drink coffee", "drink coffee",
            "out",
        ])
        assert_output_contains(output, "Main Street")

    def test_lamp_request_before_tunnel_discovery_has_no_tunnel_spoiler(self, game):
        output = game.run([
            "take bag", "down",
            "talk to woman", "1", "1", "1", "1", "1", "0",
            "drink coffee", "drink coffee", "out",
            "s",
            "take lamp",
            "talk to woman", "1", "0",
        ])
        assert_output_contains(output, "You're welcome to take the lamp with you")
        assert_output_not_contains(output, "tunnel entrance")
