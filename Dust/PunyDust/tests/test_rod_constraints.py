"""Test rod constraints."""

import pytest
from PunyTest.asserts import assert_output_contains, assert_at_room

# Commands to reach Wind Pump from game start
_TO_WINDPUMP = [
    "take bag", "down",
    "talk to woman", "1", "1", "1", "1", "1", "0",
    "drink coffee", "drink coffee",
    "out",
    "w",  # Ranch
    "talk to woman", "1", "1", "2",  # triggers flashback
    "talk to Sheriff", "1", "1", "1", "1", "1", "0",
    "take bag",
    "out",  # Main Street
    "w",    # Ranch again
    "s",    # Wind Pump
]


@pytest.mark.room("windpump")
@pytest.mark.feature("rod")
class TestRodConstraints:
    """Rod object constraints - size, carrying, containment."""

    def test_cannot_put_rod_in_bag(self, game):
        """Test that rod cannot be put in the bag (too bulky)."""
        cmds = _TO_WINDPUMP + ["take rod", "put rod in bag"]
        output = game.run(cmds)
        # Should be blocked with message about not fitting
        assert_output_contains(output, "won't fit into the bag")

    def test_cannot_put_rod_in_open_bag(self, game):
        """Test that rod cannot be put in an open bag."""
        cmds = _TO_WINDPUMP + ["take rod", "open bag", "put rod in bag"]
        output = game.run(cmds)
        # Should still be blocked
        assert_output_contains(output, "won't fit into the bag")
