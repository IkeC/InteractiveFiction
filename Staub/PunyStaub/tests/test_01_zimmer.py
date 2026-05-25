"""Tests for the Zimmer (starting room) in PunyStaub."""
import pytest
from PunyTest.asserts import assert_output_contains, assert_output_not_contains


@pytest.mark.room("zimmer")
class TestZimmer:
    def test_opening_text(self, game):
        output = game.run([])
        assert_output_contains(output, "Langsam wachst du auf")
        assert_output_contains(output, "dröhnt erbarmungslos")

    def test_room_description_first_visit(self, game):
        output = game.run([])
        assert_output_contains(output, "hustest zweimal")
        assert_output_contains(output, "spärlich eingerichtet")
        assert_output_contains(output, "Bett")
        assert_output_contains(output, "Nachttisch")
        assert_output_contains(output, "Fenster")
        assert_output_contains(output, "INFO")

    def test_room_description_look(self, game):
        output = game.run(["schau"])
        assert_output_contains(output, "spärlich eingerichtet")
        assert_output_contains(output, "Bett")
        assert_output_contains(output, "Nachttisch")
        assert_output_contains(output, "Fenster")

    def test_examine_bed(self, game):
        output = game.run(["x bett"])
        assert_output_contains(output, "karges Bett")
        assert_output_contains(output, "Matratze")

    def test_examine_mattress(self, game):
        output = game.run(["x matratze"])
        assert_output_contains(output, "Strohhalme")

    def test_examine_window(self, game):
        output = game.run(["x fenster"])
        assert_output_contains(output, "Fenster")
        assert_output_contains(output, "Windrad")

    def test_examine_windmill(self, game):
        output = game.run(["x windrad"])
        assert_output_contains(output, "Windrad")
        assert_output_contains(output, "quietschend")

    def test_examine_wall(self, game):
        output = game.run(["x wand"])
        assert_output_contains(output, "Wand")

    def test_examine_floor(self, game):
        output = game.run(["x boden"])
        assert_output_contains(output, "Boden")

    def test_examine_door(self, game):
        output = game.run(["x scharniere"])
        assert_output_contains(output, "Holztür")
        assert_output_contains(output, "Scharnieren")

    def test_examine_nightstand(self, game):
        output = game.run(["x nachttisch"])
        assert_output_contains(output, "Nachttisch")
        assert_output_contains(output, "Fach")

    def test_examine_bag_closed(self, game):
        output = game.run(["x tasche"])
        assert_output_contains(output, "Umhängetasche")
        assert_output_contains(output, "geschlossen")

    def test_open_bag_shows_contents(self, game):
        output = game.run(["oeffne tasche"])
        assert_output_contains(output, "Revolver")
        assert_output_contains(output, "Einberufungsbescheid")
        assert_output_contains(output, "Zeichnung")
        assert_output_contains(output, "Geld")

    def test_examine_revolver(self, game):
        output = game.run(["oeffne tasche", "x revolver"])
        assert_output_contains(output, "Colt Navy")

    def test_examine_einberufungsbescheid(self, game):
        output = game.run(["oeffne tasche", "x bescheid"])
        assert_output_contains(output, "Thomas Marshall")

    def test_examine_zeichnung_moves_to_player(self, game):
        output = game.run(["oeffne tasche", "x zeichnung"])
        assert_output_contains(output, "Claire")
        assert_output_contains(output, "Weste")

    def test_examine_geld(self, game):
        output = game.run(["oeffne tasche", "x geld"])
        assert_output_contains(output, "Dollar")

    def test_take_bag(self, game):
        output = game.run(["nimm tasche"])
        assert_output_contains(output, "Du nimmst die Umhängetasche an dich.")

    def test_take_bag_inventory(self, game):
        output = game.run(["nimm tasche", "i"])
        assert_output_contains(output, "Umhängetasche")

    def test_smell_room(self, game):
        output = game.run(["rieche"])
        assert_output_contains(output, "Pisse")
        assert_output_not_contains(output, "verstehe")

    def test_listen_room(self, game):
        output = game.run(["lausch"])
        assert_output_contains(output, "squieeek")

    def test_open_window_blocked(self, game):
        output = game.run(["oeffne fenster"])
        assert_output_contains(output, "zugenagelt")

    def test_horizontal_directions_blocked(self, game):
        for direction in ["n", "s", "ost", "w"]:
            output = game.run([direction])
            assert_output_contains(output, "RAUS")

    def test_go_down_to_saloon(self, game):
        output = game.run(["runter"])
        assert_output_contains(output, "Saloon")

    def test_go_out_to_saloon(self, game):
        output = game.run(["raus"])
        assert_output_contains(output, "Saloon")


@pytest.mark.feature("info")
class TestInfo:
    def test_info_shows_commands(self, game):
        output = game.run(["info"])
        assert_output_contains(output, "SCHAU")
        assert_output_contains(output, "UNTERSUCHE")
        assert_output_contains(output, "REDE MIT")
        assert_output_contains(output, "BENUTZE")

    def test_info_shows_navigation(self, game):
        output = game.run(["info"])
        assert_output_contains(output, "RUNTER")
        assert_output_contains(output, "RAUS")


@pytest.mark.feature("credits")
class TestCredits:
    def test_credits_shows_acknowledgments(self, game):
        output = game.run(["credits"])
        assert_output_contains(output, "Vielen Dank an Olaf")
        assert_output_contains(output, "Stable Diffusion XL")


@pytest.mark.feature("hint")
class TestHint:
    def test_hint_at_start(self, game):
        output = game.run(["tipp"])
        assert_output_not_contains(output, "verstehe")


@pytest.mark.room("saloon")
class TestSaloon:
    def test_go_to_saloon(self, game_at_saloon):
        output = game_at_saloon.run(["schau"])
        assert_output_contains(output, "Saloon")

    def test_return_to_zimmer(self, game_at_saloon):
        output = game_at_saloon.run(["rauf"])
        assert_output_contains(output, "Zimmer")
