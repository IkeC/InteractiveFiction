"""Tests for Main Street in PunyDust."""

import pytest
from PunyTest.asserts import assert_output_contains


@pytest.mark.room("main_street")
class TestMainStreet:
    """Main Street – the central hub connecting most locations."""

    def _go_to_main_street(self):
        return [
            "take bag", "down",
            "talk to woman", "1", "1", "1", "1", "1", "0",  # get coffee
            "drink coffee", "drink coffee",
            "out",
        ]

    def test_main_street_description(self, game):
        output = game.run(self._go_to_main_street() + ["look"])
        assert_output_contains(output, "Main Street")

    def test_examine_tumbleweed(self, game):
        output = game.run(self._go_to_main_street() + ["examine tumbleweed"])
        assert_output_contains(output, "tumbleweed")

    def test_examine_buildings(self, game):
        output = game.run(self._go_to_main_street() + ["examine buildings"])
        assert_output_contains(output, "building")

    def test_go_west_to_ranch(self, game):
        """Going west reaches the Ranch."""
        output = game.run(self._go_to_main_street() + ["w"])
        assert_output_contains(output, "Ranch")

    def test_smell(self, game):
        output = game.run(self._go_to_main_street() + ["smell"])
        assert_output_contains(output, "dust")
