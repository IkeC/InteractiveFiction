"""Tests for Windrad and Huegelkette in PunyStaub."""
import pytest
from PunyTest.asserts import assert_output_contains

_OOB_MARKER = "aus der Stadt entfernen"


@pytest.mark.room("windrad")
class TestWindrad:
    def test_room_description_first_visit(self, game_at_windrad):
        output = game_at_windrad.run(["schau"])
        assert_output_contains(output, "Windrad")
        assert_output_contains(output, "Gittermast")
        assert_output_contains(output, "f\u00fcnfzehn Meter H\u00f6he")
        assert_output_contains(output, "Heckfahne")

    def test_examine_mast_mentions_stange(self, game_at_windrad):
        output = game_at_windrad.run(["x mast"])
        assert_output_contains(output, "Stange")

    def test_take_stange(self, game_at_windrad):
        output = game_at_windrad.run(["nimm stange", "i"])
        assert_output_contains(output, "Metallstange")

    def test_oob_direction_shows_desc_oob(self, game_at_windrad):
        output = game_at_windrad.run(["s"])
        assert_output_contains(output, _OOB_MARKER)


@pytest.mark.room("huegelkette")
class TestHuegelkette:
    def test_room_description(self, game_at_huegelkette):
        output = game_at_huegelkette.run(["schau"])
        assert_output_contains(output, "Geröllfeld")

    def test_examine_spalt(self, game_at_huegelkette):
        output = game_at_huegelkette.run(["x spalt"])
        assert_output_contains(output, "Spalt")

    def test_north_is_blocked_initially(self, game_at_huegelkette):
        output = game_at_huegelkette.run(["n"])
        assert_output_contains(output, "kein")

    def test_oob_direction_shows_desc_oob(self, game_at_huegelkette):
        output = game_at_huegelkette.run(["s"])
        assert_output_contains(output, _OOB_MARKER)
