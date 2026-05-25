"""Test rod movement restriction."""

import pytest
from PunyTest.asserts import assert_output_contains, assert_output_not_contains, assert_at_room

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

# Commands to reach Cave from game start (to visit it first)
_TO_CAVE = _TO_WINDPUMP + [
    "take rod",  # take the rod first
    "w",  # Hillchain
    "u",  # use rod, triggers flashback and opens boulder
    "n",  # Cave
]


@pytest.mark.skip(reason="Need to verify the exact behavior - rod should block teleport but not directional")
def test_cannot_run_to_mainstreet_with_rod(game):
    """Test that 'run to mainstreet' with rod fails."""
    cmds = _TO_WINDPUMP + ["take rod", "run to mainstreet"]
    output = game.run(cmds)
    # The message should say we can't walk around town with the rod
    assert_output_contains(output, "shouldn't walk around town")


def test_can_go_directional_west_with_rod(game):
    """Test that directional movement 'w' with rod succeeds from windpump to hillchain."""
    cmds = _TO_WINDPUMP + ["take rod", "w"]
    output = game.run(cmds)
    # Should successfully move to Hillchain
    assert_at_room(output, "Hill Chain")


def test_can_go_directional_north_with_rod(game):
    """Test that directional movement 'n' with rod from windpump goes back to ranch."""
    cmds = _TO_WINDPUMP + ["take rod", "n"]
    output = game.run(cmds)
    # Should successfully move to Ranch
    assert_at_room(output, "Ranch")


def test_can_navigate_to_mainstreet_with_rod_via_directional_movement(game):
    """Test that directional movement can navigate from windpump to mainstreet with rod."""
    cmds = _TO_WINDPUMP + ["take rod", "n", "e"]  # windpump -> ranch -> mainstreet
    output = game.run(cmds)
    # Should successfully move to Main Street
    assert_at_room(output, "Main Street")


def test_can_run_to_mine_with_rod(game):
    """Test that 'run to mine' with rod should be allowed (mine is not a town location)."""
    cmds = _TO_WINDPUMP + ["take rod", "run to mine"]
    output = game.run(cmds)
    # Should successfully move to Mine (not blocked like town locations)
    assert_at_room(output, "Mine")






