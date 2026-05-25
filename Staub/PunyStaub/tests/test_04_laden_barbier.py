"""Tests for Laden (Bill) and Barbier (Marten) in PunyStaub."""
import pytest
from PunyTest.asserts import assert_output_contains, assert_output_not_contains


@pytest.mark.room("laden")
class TestLaden:
    def test_room_description_first_visit(self, game_at_laden):
        output = game_at_laden.run(["schau"])
        assert_output_contains(output, "Gemischtwarenladen")
        assert_output_contains(output, "Ladentheke")

    def test_bill_appears_on_first_visit(self, game_at_laden):
        output = game_at_laden.run(["schau"])
        assert_output_contains(output, "Bill")

    def test_examine_theke(self, game_at_laden):
        output = game_at_laden.run(["x theke"])
        assert_output_contains(output, "Theke")

    def test_smell_laden(self, game_at_laden):
        output = game_at_laden.run(["rieche"])
        assert_output_contains(output, "altem Mann")

    def test_cant_take_ware(self, game_at_laden):
        output = game_at_laden.run(["nimm mehl"])
        assert_output_contains(output, "Bill")

    def test_bill_talk_menu(self, game_at_laden):
        output = game_at_laden.run(["rede mit bill"])
        assert_output_contains(output, "[1]")
        assert_output_not_contains(output, "Meißel")

    def test_bill_general_talk(self, game_at_laden):
        output = game_at_laden.run(["rede mit bill", "1", "0"])
        assert_output_contains(output, '"Naja, muss halt, wa?')
        assert_output_contains(output, "Kutsche")

    def test_bill_about_lucy(self, game_at_laden):
        # Topic 343 (option 3): Lucy is a feines Mädchen
        output = game_at_laden.run(["rede mit bill", "3", "0"])
        assert_output_contains(output, "Lucy")
        assert_output_contains(output, "feines")

    def test_bill_lucy_verschwunden(self, game_at_laden):
        # After 343, topic 344 activates (option 4): Bill doesn't know where she is
        output = game_at_laden.run(["rede mit bill", "3", "3", "0"])
        assert_output_contains(output, "Tut mir leid")

    def test_bill_schaufel_not_available_initially(self, game_at_laden):
        # Topic 352 (Schaufel) is inactive initially - not available in first menu
        output = game_at_laden.run(["rede mit bill", "0"])
        assert_output_not_contains(output, "Schaufel gebrauchen")

    def test_bill_streichhoelzer_not_available_initially(self, game_at_laden):
        # Topic 353 (Streichhölzer) is inactive initially - not in first menu
        output = game_at_laden.run(["rede mit bill", "0"])
        assert_output_not_contains(output, "Streichhölzer")

    def test_bill_schilder_followup(self, game_at_laden):
        # Topic 341 (option 2) -> 342 activates (option 2 after): mentions Bill's wife
        output = game_at_laden.run(["rede mit bill", "2", "2", "0"])
        assert_output_contains(output, "Frau")

    def test_bill_no_seil(self, game_at_laden):
        # Topic 351 (Seil) is inactive initially
        output = game_at_laden.run(["rede mit bill", "0"])
        assert_output_not_contains(output, "Seil")

@pytest.mark.room("barbier")
class TestBarbier:
    def test_room_description_first_visit(self, game_at_barbier):
        output = game_at_barbier.run(["schau"])
        assert_output_contains(output, "Sessel")
        assert_output_contains(output, "Spiegel")

    def test_papagei_present(self, game_at_barbier):
        output = game_at_barbier.run(["schau"])
        assert_output_contains(output, "Papagei")
        assert_output_contains(output, "Stange")

    def test_examine_papagei(self, game_at_barbier):
        output = game_at_barbier.run(["x papagei"])
        assert_output_contains(output, "trippelt")

    def test_cant_take_papagei_without_trust(self, game_at_barbier):
        output = game_at_barbier.run(["nimm papagei"])
        assert_output_contains(output, "misstrauisch")

    def test_smell_barbier(self, game_at_barbier):
        output = game_at_barbier.run(["rieche"])
        assert_output_contains(output, "frisch")

    def test_barbier_talk_menu(self, game_at_barbier):
        output = game_at_barbier.run(["rede mit barbier"])
        assert_output_contains(output, "[1]")

    def test_barbier_first_talk_introduces_marten(self, game_at_barbier):
        output = game_at_barbier.run(["rede mit barbier"])
        assert_output_contains(output, "Der Barbier geht einen kleinen Schritt auf dich zu und grinst dich freundlich an.")
        assert_output_contains(output, '"Moin Mister. Mein Name ist Marten, was kann ich für Sie tun? Bart stutzen, Haare schneiden, Schusswunde versorgen?"')
        assert_output_contains(output, "Was möchtest du zu Marten sagen?")

    def test_barbier_moin_topic_reveals_marten(self, game_at_barbier):
        output = game_at_barbier.run(["rede mit barbier", "1", "0"])
        assert_output_contains(output, "Friese")
        assert_output_contains(output, "Marten")

    def test_barbier_schusswunde_topic(self, game_at_barbier):
        output = game_at_barbier.run(["rede mit barbier", "2", "0"])
        assert_output_contains(output, "hoher See")

    def test_barbier_reveal_herkunft(self, game_at_barbier):
        # After Moin (1), select Was hat Sie verschlagen (1) → "Maat"/"Molly"
        output = game_at_barbier.run(["rede mit barbier", "1", "1", "0"])
        assert_output_contains(output, "Maat")
        assert_output_contains(output, "Molly")

    def test_barbier_molly_is_bird(self, game_at_barbier):
        # After Moin (1), Herkunft (1), then Ist Molly Ihre Frau (2) → "Vogel"
        output = game_at_barbier.run(["rede mit barbier", "1", "1", "2", "0"])
        assert_output_contains(output, "Vogel")
        assert_output_contains(output, "Molly")

    def test_molly_renamed_after_reveal(self, game_at_barbier):
        output = game_at_barbier.run(["rede mit barbier", "1", "1", "2", "0", "x papagei"])
        assert_output_contains(output, "Molly")

    def test_return_to_hauptstrasse(self, game_at_barbier):
        output = game_at_barbier.run(["sw"])
        assert_output_contains(output, "Main Street")
