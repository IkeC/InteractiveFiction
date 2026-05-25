"""Tests for the Saloon in PunyStaub."""
import pytest
from PunyTest.asserts import assert_output_contains, assert_output_not_contains


@pytest.mark.room("saloon")
class TestSaloon:
    def test_room_description(self, game_at_saloon):
        output = game_at_saloon.run(["schau"])
        assert_output_contains(output, "Saloon")
        assert_output_contains(output, "Tresen")
        assert_output_contains(output, "Schwingtür")

    def test_barfrau_present(self, game_at_saloon):
        output = game_at_saloon.run(["schau"])
        assert_output_contains(output, "Frau")

    def test_examine_tresen(self, game_at_saloon):
        output = game_at_saloon.run(["x tresen"])
        assert_output_contains(output, "Tresen")

    def test_talk_to_barfrau_no_tasche_shows_menu(self, game_at_saloon):
        output = game_at_saloon.run(["rede mit frau"])
        assert_output_contains(output, "[1]")
        assert_output_contains(output, "[0]")

    def test_barfrau_intro_reveals_name_ella(self, game_at_saloon):
        # Option 1: "Alles klar bei dir?" → introduces Ella
        output = game_at_saloon.run(["rede mit frau", "1", "0"])
        assert_output_contains(output, "Ella")

    def test_barfrau_offers_coffee(self, game_at_saloon):
        # Option 2: "Sieht ja wild aus hier." → Ella offers coffee
        output = game_at_saloon.run(["rede mit frau", "2", "0"])
        assert_output_contains(output, "Kaffee")

    def test_barfrau_no_money_without_tasche(self, game_at_saloon):
        # After Ella offers coffee (301), 302 activates when no Tasche
        output = game_at_saloon.run(["rede mit frau", "2", "2", "0"])
        assert_output_contains(output, "kein Geld")

    def test_barfrau_coffee_topic_after_getting_tasche(self, game_at_saloon):
        # Talk (activates coffee state), then get Tasche upstairs, come back
        output = game_at_saloon.run([
            "rede mit frau", "2", "0",
            "rauf", "nimm tasche", "runter",
            "rede mit frau"
        ])
        assert_output_contains(output, "Einen Kaffee")

    def test_buy_coffee(self, game_at_saloon):
        # After activating coffee offer and getting Tasche, option 2 = 303 (Kaffee)
        output = game_at_saloon.run([
            "rede mit frau", "2", "0",
            "rauf", "nimm tasche", "runter",
            "rede mit frau", "2", "0"
        ])
        assert_output_contains(output, "Kaffee")
        assert_output_contains(output, "Keks")

    def test_coffee_and_keks_on_tresen(self, game_at_saloon):
        output = game_at_saloon.run([
            "rede mit frau", "2", "0",
            "rauf", "nimm tasche", "runter",
            "rede mit frau", "2", "0",
            "x tresen"
        ])
        assert_output_contains(output, "Tasse")

    def test_keks_can_be_taken(self, game_at_saloon):
        output = game_at_saloon.run([
            "rauf", "nimm tasche", "runter",
            "rede mit frau", "1", "1", "1", "1",
            "trinke kaffee",
            "nimm keks"
        ])
        assert_output_contains(output, "Du packst den Keks vorsichtig ein.")

    def test_barfrau_schlaegerei_topic(self, game_at_saloon):
        output = game_at_saloon.run(["rede mit frau", "1", "0"])
        assert_output_contains(output, "Schlägerei")

    def test_barfrau_mifflin_topic(self, game_at_saloon):
        # 300 (Alles klar) → 304 (Schlägerei) → 305 (Mifflin) mentions the mine
        output = game_at_saloon.run(["rede mit frau", "1", "2", "2", "0"])
        assert_output_contains(output, "Mifflin")
        assert_output_contains(output, "Mine")

    def test_go_out_to_hauptstrasse(self, game_at_saloon):
        output = game_at_saloon.run(["rauf", "nimm tasche", "runter", "raus"])
        assert_output_contains(output, "Main Street")

    def test_cant_leave_via_north_before_using_door(self, game_at_saloon):
        # In the Saloon, going north without Tasche blocks you
        output = game_at_saloon.run(["n"])
        assert_output_contains(output, "Zeug")

    def test_lamp_too_high_initially(self, game_at_saloon):
        output = game_at_saloon.run(["nimm lampe"])
        assert_output_contains(output, "hoch")

    def test_chair_can_be_pushed(self, game_at_saloon):
        output = game_at_saloon.run(["schieb stuhl"])
        assert_output_contains(output, "")  # just shouldn't crash

    def test_return_to_zimmer(self, game_at_saloon):
        output = game_at_saloon.run(["rauf"])
        assert_output_contains(output, "Zimmer")


@pytest.mark.room("saloon")
class TestLaufCommand:
    """Tests for the lauf command showing transition text."""

    def test_lauf_zu_zimmer_shows_transition_text(self, game_at_saloon):
        output = game_at_saloon.run(["lauf zu zimmer"])
        # All desc-Laufen variants contain "..." and either "später" or "darauf"
        raw = output.raw
        assert ("später" in raw or "darauf" in raw), \
            f"Expected transition text ('später' or 'darauf') in output: {raw!r}"

    def test_lauf_zu_zimmer_then_shows_room(self, game_at_saloon):
        output = game_at_saloon.run(["lauf zu zimmer"])
        assert_output_contains(output, "Zimmer")
        assert_output_contains(output, "Nachttisch")
