"""Tests for the Wind Pump room in PunyDust."""

import pytest
from PunyTest.asserts import assert_output_contains, assert_output_not_contains, assert_at_room

# Commands to reach Main Street from game start (post-sheriff)
_TO_MAINSTREET = [
    "take bag", "down",
    "talk to woman", "1", "1", "1", "1", "1", "0",
    "drink coffee", "drink coffee",
    "out",
]

# Commands to get to Wind Pump (via Ranch)
_TO_WINDPUMP = _TO_MAINSTREET + [
    "w",  # Ranch (first visit, Lucy present)
    "talk to woman", "1", "1", "2",  # triggers flashback
    "talk to Sheriff", "1", "1", "1", "1", "1", "0",  # Sheriff dialogue
    "take bag",
    "out",  # Main Street
    "w",    # Ranch (second visit)
    "s",    # Wind Pump
]


@pytest.mark.room("windpump")
class TestWindPumpArrival:
    """Arriving at the Wind Pump."""

    def test_arrives_at_windpump(self, game):
        output = game.run(_TO_WINDPUMP)
        assert_at_room(output, "Wind Pump")

    def test_first_visit_description(self, game):
        output = game.run(_TO_WINDPUMP)
        assert_output_contains(output, "wind pump that you could see")

    def test_windmill_described(self, game):
        output = game.run(_TO_WINDPUMP)
        assert_output_contains(output, "lattice mast")

    def test_directions_mentioned(self, game):
        output = game.run(_TO_WINDPUMP)
        assert_output_contains(output, "hill chain")

    def test_no_you_can_see_listing(self, game):
        """The metal rod should not be listed separately in the room description."""
        output = game.run(_TO_WINDPUMP)
        assert_output_not_contains(output, "You can see")


@pytest.mark.room("windpump")
class TestWindPumpScenery:
    """Examining scenery at the Wind Pump."""

    def test_smell(self, game):
        output = game.run(_TO_WINDPUMP + ["smell"])
        assert_output_contains(output, "squeaking wheel takes over")

    def test_examine_windpump(self, game):
        output = game.run(_TO_WINDPUMP + ["examine windpump"])
        assert_output_contains(output, "squeaks heartbreakingly")

    def test_examine_mast(self, game):
        output = game.run(_TO_WINDPUMP + ["examine mast"])
        assert_output_contains(output, "welded metal rods")

    def test_mast_loose_rod(self, game):
        """Mast description mentions the loose rod before it's taken."""
        output = game.run(_TO_WINDPUMP + ["examine mast"])
        assert_output_contains(output, "come loose")

    def test_climb_mast(self, game):
        output = game.run(_TO_WINDPUMP + ["climb mast"])
        assert_output_contains(output, "afraid of heights")

    def test_climb_windpump(self, game):
        output = game.run(_TO_WINDPUMP + ["climb windpump"])
        assert_output_contains(output, "afraid of heights")


@pytest.mark.room("windpump")
class TestWindPumpRod:
    """The metal rod object."""

    def test_take_rod_first_time(self, game):
        output = game.run(_TO_WINDPUMP + ["take rod"])
        assert_output_contains(output, "lever the rod back and forth")

    def test_examine_rod(self, game):
        output = game.run(_TO_WINDPUMP + ["take rod", "examine rod"])
        assert_output_contains(output, "ten feet long")

    def test_mast_after_taking_rod(self, game):
        """Mast no longer mentions the loose rod after taking it."""
        output = game.run(_TO_WINDPUMP + ["take rod", "examine mast"])
        assert_output_contains(output, "welded metal rods")


@pytest.mark.room("windpump")
class TestWindPumpNavigation:
    """Navigation from Wind Pump."""

    def test_north_to_ranch(self, game):
        output = game.run(_TO_WINDPUMP + ["n"])
        assert_at_room(output, "Ranch")

    def test_west_to_hillchain(self, game):
        output = game.run(_TO_WINDPUMP + ["w"])
        assert_at_room(output, "Hill Chain")

    def test_blocked_south(self, game):
        output = game.run(_TO_WINDPUMP + ["s"])
        assert_output_contains(output, "no path")

    def test_blocked_east(self, game):
        output = game.run(_TO_WINDPUMP + ["e"])
        assert_output_contains(output, "no path")

    def test_blocked_up(self, game):
        output = game.run(_TO_WINDPUMP + ["up"])
        assert_output_contains(output, "giddiness")
