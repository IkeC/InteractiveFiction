"""Tests for the General Store and Bill NPC in PunyDust."""

import pytest
from PunyTest.asserts import assert_output_contains, assert_output_not_contains, assert_at_room

# Reach General Store (post-sheriff, after talking to Lucy)
_TO_MAINSTREET = [
    "take bag", "down",
    "talk to woman", "1", "1", "1", "1", "1", "0",
    "drink coffee", "drink coffee", "out",
]
_TO_SHERIFF = _TO_MAINSTREET + [
    "w",  # Main Street -> Ranch
    "talk to woman", "1", "1", "2",  # triggers Flashback 1 -> Sheriff
]
_TO_STORE = _TO_SHERIFF + [
    "talk to Sheriff", "1", "1", "1", "1", "1", "0",
    "take bag", "out", "n",  # Sheriff -> Main Street -> Store
]

# Reach Store with boulder discovered (needed for chisel topic).
# Full path: Saloon (cookie) + Sheriff + Mine (hankie) + Barber (Molly) +
# Hill Chain (boulder discovery) + Store.
_SALOON_WITH_COOKIE = [
    "take bag", "down",
    "talk to woman", "1", "1", "1", "1", "1", "0",
    "drink coffee", "drink coffee", "take cookie", "out",
]
_TO_STORE_WITH_BOULDER = _SALOON_WITH_COOKIE + [
    "w", "talk to woman", "1", "1", "2",  # Ranch -> flashback -> Sheriff
    "talk to Sheriff", "1", "1", "1", "1", "1", "0", "take bag", "out",
    "w", "w", "take hankie", "e", "e",  # Ranch -> Mine -> Main St
    "ne",  # Barber
    "talk to barber", "1", "1", "1", "1", "1", "2", "0",
    "give cookie to Molly", "talk to Marten", "2", "0", "take Molly",
    "out", "w", "s", "w",  # Main St -> Ranch -> Wind Pump -> Hill Chain
    "examine boulders",  # Molly discovers boulder -> activates Bill chisel topic
    "e", "n", "e", "n",  # Wind Pump -> Ranch -> Main St -> Store
]


@pytest.mark.room("General Store")
class TestStoreArrival:
    """Visiting the General Store for the first time."""

    def test_arrives_at_store(self, game):
        output = game.run(_TO_STORE)
        assert_at_room(output, "General Store")

    def test_first_visit_bell(self, game):
        output = game.run(_TO_STORE)
        assert_output_contains(output, "bell jingles brightly")

    def test_first_visit_bill_appears(self, game):
        output = game.run(_TO_STORE)
        assert_output_contains(output, "Bill appears")

    def test_counter_described(self, game):
        output = game.run(_TO_STORE + ["examine counter"])
        assert_output_contains(output, "wooden counter")

    def test_shelves_described(self, game):
        output = game.run(_TO_STORE + ["examine shelves"])
        assert_output_contains(output, "wall shelves")

    def test_labels_described(self, game):
        output = game.run(_TO_STORE + ["examine labels"])
        assert_output_contains(output, "can't read the labels")

    def test_buy_redirects_to_bill(self, game):
        output = game.run(_TO_STORE + ["buy tools"])
        assert_output_contains(output, "talk to Bill")


@pytest.mark.room("General Store")
class TestBillDialogue:
    """Bill NPC dialogue tree."""

    def test_bill_present(self, game):
        output = game.run(_TO_STORE + ["examine man"])
        assert_output_contains(output, "hunchbacked shopkeeper")

    def test_bill_hows_it_going(self, game):
        output = game.run(_TO_STORE + ["talk to Bill", "1"])
        assert_output_contains(output, "it has to")

    def test_bill_for_sale(self, game):
        output = game.run(_TO_STORE + ["talk to Bill", "1", "1"])
        assert_output_contains(output, "read it yourself")

    def test_bill_labels_path(self, game):
        output = game.run(_TO_STORE + ["talk to Bill", "1", "1", "1"])
        assert_output_contains(output, "my wife used to label")

    def test_bill_chisel_not_available_without_boulder(self, game):
        """Chisel topic is NOT offered before boulder discovery."""
        output = game.run(_TO_STORE + [
            "talk to Bill", "1", "1", "1", "1", "1",
        ])
        assert_output_not_contains(output, "chisel")

    def test_bill_chisel_to_crowbar(self, game):
        """Chisel topic IS offered after boulder discovery and leads to crowbar chain."""
        output = game.run(_TO_STORE_WITH_BOULDER + [
            "talk to Bill", "1", "1", "1", "1", "1", "1", "1",
        ])
        assert_output_contains(output, "gooseneck")
        assert_output_contains(output, "pince-nez")

    def test_bill_pincenez_grave_hint(self, game):
        output = game.run(_TO_STORE_WITH_BOULDER + [
            "talk to Bill", "1", "1", "1", "1", "1", "1", "1", "1", "1",
        ])
        assert_output_contains(output, "wife's grave")


@pytest.mark.room("General Store")
class TestCrowbarQuest:
    """Obtaining the crowbar via pince-nez quest."""

    # Navigate to Cemetery, read cross 2 (Mathilda), visit store for wife name,
    # then go back and find pince-nez, then return to get crowbar.
    _FULL_BILL_1ST = _TO_STORE_WITH_BOULDER + [
        "talk to Bill",
        "1", "1", "1", "1", "1", "1", "1", "1", "1",
        "0", "out",
    ]

    def test_cemetery_cross2_activates_wife_topic(self, game):
        """After reading Mathilda's cross AND having 308 stale, topic 309 activates."""
        cmds = self._FULL_BILL_1ST + [
            "e", "n",  # Gallows, Cemetery
            "examine crosses", "1", "2", "0",  # reads Mathilda cross
            "s", "w", "n",  # Cemetery -> Gallows -> Main St -> Store
            "talk to Bill",
        ]
        output = game.run(cmds)
        assert_output_contains(output, "wife's name")

    def test_crowbar_appears_after_pincenez(self, game):
        """Crowbar on counter when pince-nez returned."""
        cmds = self._FULL_BILL_1ST + [
            "e", "n",
            "examine crosses", "1", "2", "0",
            "s", "w", "n",  # Cemetery -> Gallows -> Main St -> Store
            "talk to Bill", "1", "0",  # learn wife's name
            "out", "e", "n",
            "examine crosses", "1", "2", "0",
            "examine graves", "2", "0",  # find pince-nez
            "run to Bill",
            "talk to Bill", "1", "1",  # return pince-nez, get crowbar (auto-ends)
            "look",  # re-print room description which lists crowbar
        ]
        output = game.run(cmds)
        assert_output_contains(output, "crowbar on the counter")

    def test_take_crowbar(self, game):
        cmds = self._FULL_BILL_1ST + [
            "e", "n",
            "examine crosses", "1", "2", "0",
            "s", "w", "n",  # Cemetery -> Gallows -> Main St -> Store
            "talk to Bill", "1", "0",
            "out", "e", "n",
            "examine crosses", "1", "2", "0",
            "examine graves", "2", "0",
            "run to Bill",
            "talk to Bill", "1", "1", "0",
            "take crowbar", "examine crowbar",
        ]
        output = game.run(cmds)
        assert_output_contains(output, "two feet long")

    def test_bill_long_pole_option_hidden_after_rod_found(self, game):
        cmds = self._FULL_BILL_1ST + [
            "e", "n",
            "examine crosses", "1", "2", "0",
            "s", "w", "n",  # Cemetery -> Gallows -> Main St -> Store
            "talk to Bill", "1", "0",
            "out", "e", "n",
            "examine crosses", "1", "2", "0",
            "examine graves", "2", "0",
            "run to Bill",
            "talk to Bill", "1", "1", "0",
            "take crowbar",
            "s", "w", "s", "w",  # Store -> Main St -> Ranch -> Wind Pump -> Hill Chain
            "use crowbar with crevice",
            "e", "take rod", "drop rod",
            "n", "e", "n",
            "talk to Bill",
        ]
        output = game.run(cmds)
        assert_output_not_contains(output, "I could use a long pole or something")
