"""Tests for Galgen and Friedhof in PunyStaub."""
import pytest
from PunyTest.asserts import assert_output_contains

_OOB_MARKER = "aus der Stadt entfernen"


@pytest.mark.room("galgen")
class TestGalgen:
    def test_room_description_first_visit(self, game_at_galgen):
        output = game_at_galgen.run(["schau"])
        assert_output_contains(output, "Galgen")
        assert_output_contains(output, "Schlinge")

    def test_examine_schlinge(self, game_at_galgen):
        output = game_at_galgen.run(["x schlinge"])
        assert_output_contains(output, "Schlinge")

    def test_examine_sand(self, game_at_galgen):
        output = game_at_galgen.run(["x sand"])
        assert_output_contains(output, "Düne")

    def test_oob_direction_shows_desc_oob(self, game_at_galgen):
        output = game_at_galgen.run(["s"])
        assert_output_contains(output, _OOB_MARKER)

    def test_oob_east_shows_desc_oob(self, game_at_galgen):
        output = game_at_galgen.run(["o"])
        assert_output_contains(output, _OOB_MARKER)


@pytest.mark.room("friedhof")
class TestFriedhof:
    def test_room_description(self, game_at_galgen):
        output = game_at_galgen.run(["n", "schau"])
        assert_output_contains(output, "Grabes")
        assert_output_contains(output, "gepfercht")
        assert_output_contains(output, "Deserteuren")
        assert_output_contains(output, "Umrisse des Galgens")

    def test_kreuz_menu_mathilda(self, game_at_galgen):
        output = game_at_galgen.run(["n", "x kreuz", "2", "0"])
        assert_output_contains(output, "Mathilda")

    def test_grab_menu_before_name(self, game_at_galgen):
        output = game_at_galgen.run(["n", "x grab", "2", "0"])
        assert_output_contains(output, "nichts Besonderes")

    def test_oob_direction_shows_desc_oob(self, game_at_galgen):
        output = game_at_galgen.run(["n", "n"])
        assert_output_contains(output, _OOB_MARKER)
