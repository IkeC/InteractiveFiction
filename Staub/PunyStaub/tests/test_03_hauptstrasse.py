"""Tests for Hauptstraße and surrounding areas in PunyStaub."""
import pytest
from PunyTest.asserts import assert_output_contains, assert_output_not_contains

_OOB_MARKER = "aus der Stadt entfernen"


@pytest.mark.room("hauptstrasse")
class TestHauptstrasse:
    def test_room_description(self, game_at_hauptstrasse):
        output = game_at_hauptstrasse.run(["schau"])
        assert_output_contains(output, "Main Street")
        assert_output_contains(output, "Straße")
        assert_output_contains(output, "staubig")

    def test_examine_gebaeude(self, game_at_hauptstrasse):
        output = game_at_hauptstrasse.run(["x gebaeude"])
        assert_output_contains(output, "Sheriff")
        assert_output_contains(output, "Gemischtwarenladen")
        assert_output_contains(output, "Barbier")

    def test_gebaeude_after_examine_shows_locations(self, game_at_hauptstrasse):
        output = game_at_hauptstrasse.run(["x gebaeude", "schau"])
        assert_output_contains(output, "Nordwesten")

    def test_smell_hauptstrasse(self, game_at_hauptstrasse):
        output = game_at_hauptstrasse.run(["rieche"])
        assert_output_contains(output, "Gerüche")

    def test_sheriff_door_locked_before_sheriff(self, game_at_hauptstrasse):
        output = game_at_hauptstrasse.run(["nw"])
        assert_output_contains(output, "geschlossen")

    def test_laden_door_locked_before_sheriff(self, game_at_hauptstrasse):
        output = game_at_hauptstrasse.run(["n"])
        assert_output_contains(output, "geschlossen")

    def test_barbier_blocked_before_sheriff(self, game_at_hauptstrasse):
        output = game_at_hauptstrasse.run(["no"])
        assert_output_contains(output, "geschlossen")

    def test_go_west_to_ranch(self, game_at_hauptstrasse):
        output = game_at_hauptstrasse.run(["w"])
        assert_output_contains(output, "Ranch")

    def test_go_east_to_galgen(self, game_at_hauptstrasse):
        output = game_at_hauptstrasse.run(["ost"])
        assert_output_contains(output, "Galgen")

    def test_return_south_to_saloon(self, game_at_hauptstrasse):
        output = game_at_hauptstrasse.run(["s"])
        assert_output_contains(output, "Saloon")


@pytest.mark.room("ranch")
class TestRanch:
    def test_lucy_in_ranch(self, game_at_hauptstrasse):
        output = game_at_hauptstrasse.run(["w"])
        assert_output_contains(output, "junge Frau")

    def test_cant_leave_ranch_with_lucy(self, game_at_hauptstrasse):
        output = game_at_hauptstrasse.run(["w", "ost"])
        assert_output_contains(output, "sitzen lassen")

    def test_lucy_talk_menu_appears(self, game_at_hauptstrasse):
        output = game_at_hauptstrasse.run(["w", "rede mit frau"])
        assert_output_contains(output, "[1]")
        assert_output_contains(output, "Was möchtest du zu der jungen Frau sagen?")

    def test_lucy_intro(self, game_at_hauptstrasse):
        output = game_at_hauptstrasse.run(["w", "rede mit frau", "1", "0"])
        assert_output_contains(output, "Michael")

    def test_lucy_reveals_name(self, game_at_hauptstrasse):
        # 390 (help) → 391 (Michael) → 392 (name) → "Ich bin Lucy"
        output = game_at_hauptstrasse.run(["w", "rede mit frau", "1", "1", "1", "0"])
        assert_output_contains(output, "Lucy")

    def test_lucy_reply_uses_double_quotes(self, game_at_hauptstrasse):
        output = game_at_hauptstrasse.run(["w", "rede mit frau", "1", "1", "2", "0"])
        assert_output_contains(output, '"Ich weiß es nicht.')

    def test_oob_north_from_ranch_shows_desc_oob(self, game_after_release):
        # After releasing Lucy, blocked directions show OOB message
        output = game_after_release.run(["raus", "w", "n"])
        assert_output_contains(output, _OOB_MARKER)

    def test_knockout_sequence(self, game_after_ko):
        # After KO, player should be in Sheriff's office
        output = game_after_ko.run(["schau"])
        assert_output_contains(output, "Sheriff")
        assert_output_contains(output, "Büro")


@pytest.mark.room("sheriff")
class TestSheriff:
    def test_sheriff_room_when_locked_up(self, game_after_ko):
        output = game_after_ko.run(["schau"])
        assert_output_contains(output, "Pritschen")
        assert_output_contains(output, "Schreibtisch")

    def test_cant_leave_when_locked_up(self, game_after_ko):
        output = game_after_ko.run(["raus"])
        assert_output_contains(output, "knurrt")

    def test_sheriff_talk_menu(self, game_after_ko):
        output = game_after_ko.run(["rede mit sheriff"])
        assert_output_contains(output, "[1]")
        assert_output_contains(output, "passiert")

    def test_sheriff_dialog_first_topic(self, game_after_ko):
        output = game_after_ko.run(["rede mit sheriff", "1", "0"])
        assert_output_contains(output, "Deputy Miller")
        assert_output_contains(output, "Ranch")

    def test_sheriff_dialog_young_woman(self, game_after_ko):
        # 320 (was passiert) → 321 (junge Frau) → 323 (Lucy info)
        output = game_after_ko.run(["rede mit sheriff", "1", "1", "2", "0"])
        assert_output_contains(output, "Miller")
        assert_output_contains(output, "Thompson")

    def test_sheriff_release(self, game_after_release):
        output = game_after_release.run(["schau"])
        assert_output_contains(output, "Büro des Sheriffs")

    def test_bag_contains_revolver_after_release(self, game_after_release):
        output = game_after_release.run(["oeffne tasche"])
        assert_output_contains(output, "Revolver")
        assert_output_contains(output, "Geld")

    def test_can_leave_after_release(self, game_after_release):
        output = game_after_release.run(["raus"])
        assert_output_contains(output, "Main Street")

    def test_laden_unlocked_after_release(self, game_after_release):
        output = game_after_release.run(["raus", "n"])
        assert_output_contains(output, "Gemischtwarenladen")

    def test_barbier_accessible_after_release(self, game_after_release):
        output = game_after_release.run(["raus", "no"])
        assert_output_contains(output, "Barbier")


class TestLaufZu:
    def test_lauf_alone_lists_known_places(self, game_after_release):
        output = game_after_release.run(["lauf"])
        assert_output_contains(output, "LAUF ZU einem dieser Orte:")
        assert_output_contains(output, "Saloon")
        assert_output_contains(output, "Zimmer")

    def test_lauf_zu_saloon_teleports(self, game_after_release):
        output = game_after_release.run(["lauf zu saloon"])
        assert_output_contains(output, "Saloon")

    def test_lauf_zu_zimmer_teleports(self, game_after_release):
        output = game_after_release.run(["lauf zu zimmer"])
        assert_output_contains(output, "Zimmer")

    def test_lauf_zu_unknown_place_shows_list(self, game_after_release):
        output = game_after_release.run(["lauf zu mond"])
        assert_output_contains(output, "kenne ich nicht")
        assert_output_contains(output, "Bekannte Orte")

    def test_lauf_zu_already_there(self, game_after_release):
        output = game_after_release.run(["raus", "lauf zu main"])
        assert_output_contains(output, "bereits dort")

    def test_lauf_zu_unvisited_place(self, game_after_release):
        output = game_after_release.run(["lauf zu gewolbe"])
        assert_output_contains(output, "kenne ich noch nicht")
