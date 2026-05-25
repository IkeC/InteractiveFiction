"""Tests for Hill Chain boulder/crevice mechanics and Cave in PunyDust."""

import pytest
from PunyTest.asserts import assert_output_contains, assert_output_not_contains, assert_at_room

# Base: exit Saloon with bag + coffee + cookie
_SALOON = [
    "take bag", "down",
    "talk to woman", "1", "1", "1", "1", "1", "0",
    "drink coffee", "drink coffee", "take cookie", "out",
]

# Post-sheriff on Main Street
_POST_SHERIFF = _SALOON + [
    "w", "talk to woman", "1", "1", "2",  # Ranch -> flashback -> Sheriff
    "talk to Sheriff", "1", "1", "1", "1", "1", "0", "take bag", "out",
]

# Reach Hill Chain with Molly (requires hankie + full Marten dialogue)
_SETUP = _POST_SHERIFF + [
    "w", "w", "take hankie", "e", "e",  # Main St -> Ranch -> Mine, back to Main St
    "ne",  # Barber
    "talk to barber", "1", "1", "1", "1", "1", "2", "0",
    "give cookie to Molly", "talk to Marten", "2", "0", "take Molly",
    "out", "w", "s", "w",  # Main St -> Ranch -> Wind Pump -> Hill Chain
]

# Full setup ending with crowbar at Hill Chain
def _with_crowbar():
    return _SETUP + [
        "examine boulders",  # Molly discovers boulder -> activates Bill chisel topic
        "e", "n", "e", "n",  # Hill Chain -> Wind Pump -> Ranch -> Main St -> Store
        "talk to Bill", "1", "1", "1", "1", "1", "1", "1", "1", "1", "0",
        "s", "e", "n",  # Store -> Main St -> Gallows -> Cemetery
        "examine crosses", "1", "2", "0",  # set F_BILLS_WIFE_FOUND
        "s", "w", "n",  # Cemetery -> Gallows -> Main St -> Store
        "talk to Bill", "1", "0",  # learn wife name
        "s", "e", "n",  # Store -> Main St -> Gallows -> Cemetery (2nd visit)
        "examine crosses", "1", "2", "0",
        "examine graves", "2", "0",  # find pince-nez
        "run to Bill",
        "talk to Bill", "1", "1", "0",  # return pince-nez, get crowbar
        "take crowbar",
        "s", "w", "s", "w",  # Store -> Main St -> Ranch -> Wind Pump -> Hill Chain
    ]


@pytest.mark.room("Hill Chain")
class TestHillChainArrival:
    """First visit to Hill Chain with Molly."""

    def test_arrives_at_hillchain(self, game):
        output = game.run(_SETUP)
        assert_at_room(output, "Hill Chain")

    def test_first_visit_text(self, game):
        output = game.run(_SETUP)
        assert_output_contains(output, "few minutes")

    def test_smell(self, game):
        output = game.run(_SETUP + ["smell"])
        assert_output_contains(output, "smoke")

    def test_molly_discovers_boulder(self, game):
        output = game.run(_SETUP + ["examine boulders"])
        assert_output_contains(output, "FIREEEE")

    def test_boulder_described_after_discovery(self, game):
        output = game.run(_SETUP + ["examine boulders", "examine boulder"])
        assert_output_contains(output, "crevice")

    def test_crevice_described(self, game):
        output = game.run(_SETUP + ["examine boulders", "examine crevice"])
        assert_output_contains(output, "draught")

    def test_marten_molly_repeat_topic_hidden_after_boulder_discovery(self, game):
        output = game.run(_SETUP + [
            "examine boulders",
            "e", "n", "e", "ne",
            "talk to Marten",
        ])
        assert_output_contains(output, "wouldn't know what to talk about right now")


@pytest.mark.room("Hill Chain")
class TestCreviceMechanics:
    """Crowbar and rod mechanics at the crevice."""

    def test_crowbar_widens_crevice(self, game):
        cmds = _with_crowbar() + ["use crowbar with crevice"]
        output = game.run(cmds)
        assert_output_contains(output, "crowbar into the gap")
        assert_output_contains(output, "much wider")

    def test_use_crowbar_in_crevice_widens_crevice(self, game):
        cmds = _with_crowbar() + ["use crowbar in crevice"]
        output = game.run(cmds)
        assert_output_contains(output, "crowbar into the gap")
        assert_output_contains(output, "much wider")

    def test_put_crowbar_in_crevice_widens_crevice(self, game):
        cmds = _with_crowbar() + ["put crowbar in crevice"]
        output = game.run(cmds)
        assert_output_contains(output, "crowbar into the gap")
        assert_output_contains(output, "much wider")

    def test_rod_triggers_flashback_and_opens_cave(self, game):
        cmds = _with_crowbar() + [
            "use crowbar with crevice",
            "run to windpump", "take rod",
            "w", "use rod on crevice",
        ]
        output = game.run(cmds)
        assert_output_contains(output, "pier")
        assert_output_contains(output, "Claire")
        assert_output_contains(output, "boulder comes loose")

    def test_cave_accessible_after_boulder_removed(self, game):
        cmds = _with_crowbar() + [
            "use crowbar with crevice",
            "run to windpump", "take rod",
            "w", "use rod on crevice", "n",
        ]
        output = game.run(cmds)
        assert_at_room(output, "Cave")

    def test_hillchain_description_has_no_blank_line_after_tunnel_entrance(self, game):
        cmds = _with_crowbar() + [
            "use crowbar with crevice",
            "run to windpump", "take rod",
            "w", "use rod on crevice", "look",
        ]
        output = game.run(cmds)
        assert_output_not_contains(output, "entrance.\n\nThe path in the east")


@pytest.mark.room("Cave")
class TestCaveRoom:
    """The Cave (dark room requiring lamp)."""

    def _cmds_to_cave(self):
        return _with_crowbar() + [
            "use crowbar with crevice",
            "run to windpump", "take rod",
            "w", "use rod on crevice", "n",
        ]

    def test_arrives_at_cave(self, game):
        output = game.run(self._cmds_to_cave())
        assert_at_room(output, "Cave")

    def test_first_visit_squeeze(self, game):
        output = game.run(self._cmds_to_cave())
        assert_output_contains(output, "squeeze through")

    def test_cave_dark(self, game):
        output = game.run(self._cmds_to_cave())
        assert_output_contains(output, "can hardly see your own feet")

    def test_cave_smell(self, game):
        output = game.run(self._cmds_to_cave() + ["smell"])
        assert_output_contains(output, "smoke")
        assert_output_contains(output, "sweet")

    def test_cave_east_blocked(self, game):
        output = game.run(self._cmds_to_cave() + ["e"])
        assert_output_contains(output, "feel the wall")

    def test_cave_west_blocked(self, game):
        output = game.run(self._cmds_to_cave() + ["w"])
        assert_output_contains(output, "feel the wall")

    def test_cave_north_too_dark(self, game):
        output = game.run(self._cmds_to_cave() + ["n"])
        assert_output_contains(output, "too dark")

    def test_cave_rock_feel(self, game):
        output = game.run(self._cmds_to_cave() + ["examine rock"])
        assert_output_contains(output, "damp and smooth")

    def test_run_to_cave(self, game):
        """run to cave teleport works after cave visited."""
        cmds = self._cmds_to_cave() + ["s", "run to cave"]
        output = game.run(cmds)
        assert_at_room(output, "Cave")
