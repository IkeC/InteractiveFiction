"""Tests for the Gallows and Cemetery rooms in PunyDust."""

import pytest
from PunyTest.asserts import assert_output_contains, assert_at_room

# Commands to reach Main Street from game start (post-sheriff)
_TO_MAINSTREET = [
    "take bag", "down",
    "talk to woman", "1", "1", "1", "1", "1", "0",
    "drink coffee", "drink coffee",
    "out",
]

# Commands to get to Gallows (east of Main Street)
_TO_GALLOWS = _TO_MAINSTREET + ["e"]

# Commands to get to Cemetery (north of Gallows)
_TO_CEMETERY = _TO_GALLOWS + ["n"]


def _assert_menu_blank_lines(output, first_option, exit_option):
    lines = output.lines
    first_index = next(index for index, line in enumerate(lines) if line.strip() == first_option)
    exit_index = next(index for index, line in enumerate(lines) if line.strip() == exit_option)

    blank_before_first = 0
    index = first_index - 1
    while index >= 0 and lines[index] == "":
        blank_before_first += 1
        index -= 1

    blank_after_exit = 0
    index = exit_index + 1
    while index < len(lines) and lines[index] == "":
        blank_after_exit += 1
        index += 1

    assert blank_before_first <= 1
    assert blank_after_exit <= 1


@pytest.mark.room("gallows")
class TestGallowsArrival:
    """Arriving at the Gallows."""

    def test_arrives_at_gallows(self, game):
        output = game.run(_TO_GALLOWS)
        assert_at_room(output, "Gallows")

    def test_first_visit_text(self, game):
        output = game.run(_TO_GALLOWS)
        assert_output_contains(output, "wind hits you hard")

    def test_gallows_described(self, game):
        output = game.run(_TO_GALLOWS)
        assert_output_contains(output, "two posts with crossbars")

    def test_platform_mentioned(self, game):
        output = game.run(_TO_GALLOWS)
        assert_output_contains(output, "wooden platform")

    def test_exits_mentioned(self, game):
        output = game.run(_TO_GALLOWS)
        assert_output_contains(output, "leaning crosses")
        assert_output_contains(output, "return to town")


@pytest.mark.room("gallows")
class TestGallowsScenery:
    """Examining scenery at the Gallows."""

    def test_smell(self, game):
        output = game.run(_TO_GALLOWS + ["smell"])
        assert_output_contains(output, "too piercing to smell")

    def test_examine_gallows(self, game):
        output = game.run(_TO_GALLOWS + ["examine gallows"])
        assert_output_contains(output, "noose is")

    def test_examine_noose(self, game):
        output = game.run(_TO_GALLOWS + ["examine noose"])
        assert_output_contains(output, "decommissioned after the war")

    def test_take_noose(self, game):
        output = game.run(_TO_GALLOWS + ["take noose"])
        assert_output_contains(output, "no use to you")

    def test_examine_crosses(self, game):
        output = game.run(_TO_GALLOWS + ["examine crosses"])
        assert_output_contains(output, "From a distance")

    def test_examine_town(self, game):
        output = game.run(_TO_GALLOWS + ["examine town"])
        assert_output_contains(output, "inconspicuous houses")

    def test_examine_platform(self, game):
        output = game.run(_TO_GALLOWS + ["examine platform"])
        assert_output_contains(output, "covered with sand")

    def test_look_under_platform(self, game):
        output = game.run(_TO_GALLOWS + ["look under platform"])
        assert_output_contains(output, "completely closed off")

    def test_examine_sand_matches_original_text(self, game):
        output = game.run(_TO_GALLOWS + ["examine sand"])
        assert_output_contains(output, "The sand forms a small dune and comes up to your knee")
        assert_output_contains(output, "practically nothing left to see of the base of the platform")

    def test_push_sand_matches_original_text(self, game):
        output = game.run(_TO_GALLOWS + ["push sand"])
        assert_output_contains(output, "The sand forms a small dune and comes up to your knee")
        assert_output_contains(output, "practically nothing left to see of the base of the platform")

    def test_purloin_shovel_can_dig_sand(self, game):
        output = game.run(_TO_GALLOWS + [
            "purloin shovel",
            "i",
            "use shovel on sand",
            "use shovel with sand",
            "i",
        ])
        assert_output_contains(output, "Purloined.")
        assert_output_contains(output, "a shovel")
        assert_output_contains(output, "Piece by piece, you free the platform from the large pile of sand")
        assert_output_contains(output, "sturdy wooden board becomes visible")
        assert_output_contains(output, "You are actually already satisfied with the result.")

    def test_take_sand_matches_original_text(self, game):
        output = game.run(_TO_GALLOWS + ["take sand"])
        assert_output_contains(output, "You try to scrape the sand away with your feet")
        assert_output_contains(output, "more success with proper tools")


@pytest.mark.room("gallows")
class TestGallowsNavigation:
    """Navigation from Gallows."""

    def test_west_to_mainstreet(self, game):
        output = game.run(_TO_GALLOWS + ["w"])
        assert_at_room(output, "Main Street")

    def test_north_to_cemetery(self, game):
        output = game.run(_TO_GALLOWS + ["n"])
        assert_at_room(output, "Cemetery")

    def test_blocked_east(self, game):
        output = game.run(_TO_GALLOWS + ["e"])
        assert_output_contains(output, "nothing out there")

    def test_blocked_south(self, game):
        output = game.run(_TO_GALLOWS + ["s"])
        assert_output_contains(output, "nothing out there")


@pytest.mark.room("cemetery")
class TestCemeteryArrival:
    """Arriving at the Cemetery."""

    def test_arrives_at_cemetery(self, game):
        output = game.run(_TO_CEMETERY)
        assert_at_room(output, "Cemetery")

    def test_first_visit_text(self, game):
        output = game.run(_TO_CEMETERY)
        assert_output_contains(output, "bushes protect")

    def test_crooked_crosses_described(self, game):
        output = game.run(_TO_CEMETERY)
        assert_output_contains(output, "final resting place of deserters")

    def test_neat_crosses_described(self, game):
        output = game.run(_TO_CEMETERY)
        assert_output_contains(output, "four crosses stand neatly")

    def test_gallows_visible(self, game):
        output = game.run(_TO_CEMETERY)
        assert_output_contains(output, "outline of the gallows")


@pytest.mark.room("cemetery")
class TestCemeteryScenery:
    """Examining scenery at the Cemetery."""

    def test_smell(self, game):
        output = game.run(_TO_CEMETERY + ["smell"])
        assert_output_contains(output, "slightly sweet scent")

    def test_examine_bushes(self, game):
        output = game.run(_TO_CEMETERY + ["examine bushes"])
        assert_output_contains(output, "protection from the")

    def test_examine_crosses_menu(self, game):
        """Examining crosses shows a numbered menu."""
        output = game.run(_TO_CEMETERY + ["examine crosses"])
        assert_output_contains(output, "First cross")
        assert_output_contains(output, "Fourth cross")

    def test_examine_crosses_menu_has_blank_lines(self, game):
        output = game.run(_TO_CEMETERY + ["examine crosses"])
        _assert_menu_blank_lines(output, "[1] First cross", "[0] End")

    def test_examine_graves_menu_has_blank_lines(self, game):
        output = game.run(_TO_CEMETERY + ["examine graves"])
        _assert_menu_blank_lines(output, "[1] First grave", "[0] End")

    def test_cross_1_biff(self, game):
        output = game.run(_TO_CEMETERY + ["examine crosses", "1", "0"])
        assert_output_contains(output, "Biff Clayton")

    def test_cross_2_mathilda(self, game):
        output = game.run(_TO_CEMETERY + ["examine crosses", "2", "0"])
        assert_output_contains(output, "Mathilda Brooks")

    def test_cross_3_wendy(self, game):
        output = game.run(_TO_CEMETERY + ["examine crosses", "3", "0"])
        assert_output_contains(output, "Wendy Porter")

    def test_cross_4_lucille(self, game):
        output = game.run(_TO_CEMETERY + ["examine crosses", "4", "0"])
        assert_output_contains(output, "Lucille Thompson")


@pytest.mark.room("cemetery")
class TestCemeteryNavigation:
    """Navigation from Cemetery."""

    def test_south_to_gallows(self, game):
        output = game.run(_TO_CEMETERY + ["s"])
        assert_at_room(output, "Gallows")

    def test_blocked_north(self, game):
        output = game.run(_TO_CEMETERY + ["n"])
        assert_output_contains(output, "nothing out there")

    def test_blocked_east(self, game):
        output = game.run(_TO_CEMETERY + ["e"])
        assert_output_contains(output, "nothing out there")


