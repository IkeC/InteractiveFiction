"""Tests for the Barber Shop (Marten + Molly) in PunyDust."""

import pytest
from PunyTest.asserts import assert_output_contains, assert_at_room

_TO_MAINSTREET = [
    "take bag", "down",
    "talk to woman", "1", "1", "1", "1", "1", "0",
    "drink coffee", "drink coffee", "take cookie", "out",
]
_TO_SHERIFF = _TO_MAINSTREET + [
    "w", "talk to woman", "1", "1", "2",  # Ranch, trigger flashback -> Sheriff
]
_POST_SHERIFF = _TO_SHERIFF + [
    "talk to Sheriff", "1", "1", "1", "1", "1", "0",
    "take bag", "out",
]
# Mine visit to pick up hankie (activates Marten topic 305)
_WITH_HANKIE = _POST_SHERIFF + [
    "w", "w",   # Main Street -> Ranch -> Mine
    "take hankie",
    "e", "e",   # Mine -> Ranch -> Main Street
]
_TO_BARBER = _WITH_HANKIE + ["ne"]  # Main Street -> Barber


@pytest.mark.room("Barber Shop")
class TestBarberArrival:
    """Arriving at the Barber Shop."""

    def test_arrives_at_barber(self, game):
        output = game.run(_TO_BARBER)
        assert_at_room(output, "Barber Shop")

    def test_first_visit_text(self, game):
        output = game.run(_TO_BARBER)
        assert_output_contains(output, "red, white and blue pole")

    def test_tilt_chair_described(self, game):
        output = game.run(_TO_BARBER + ["examine tilt chair"])
        assert_output_contains(output, "red leather")

    def test_mirror_described(self, game):
        output = game.run(_TO_BARBER + ["examine mirror"])
        assert_output_contains(output, "shave")

    def test_parrot_described(self, game):
        output = game.run(_TO_BARBER + ["examine parrot"])
        assert_output_contains(output, "tripping up and down")

    def test_parrot_talks(self, game):
        output = game.run(_TO_BARBER + ["talk to parrot"])
        assert_output_contains(output, "aak!")  # Bra(a+)k! – random # of a's

    def test_smell(self, game):
        output = game.run(_TO_BARBER + ["smell"])
        assert_output_contains(output, "fresh")


@pytest.mark.room("Barber Shop")
class TestMartenDialogue:
    """Marten NPC dialogue."""

    def test_marten_greets(self, game):
        output = game.run(_TO_BARBER + ["talk to barber"])
        assert_output_contains(output, "Moin Mister")
        assert_output_contains(output, "Marten")

    def test_marten_moin_topic(self, game):
        output = game.run(_TO_BARBER + ["talk to barber", "1"])
        assert_output_contains(output, "Frisian")

    def test_marten_gunshot_topic(self, game):
        output = game.run(_TO_BARBER + ["talk to barber", "1", "1", "1"])
        assert_output_contains(output, "gravedigger")

    def test_marten_molly_is_bird(self, game):
        output = game.run(_TO_BARBER + ["talk to barber", "1", "1", "1", "1"])
        assert_output_contains(output, "fire watcher")

    def test_marten_mine_topic_available_after_hankie(self, game):
        """Mine topic available because Hankie was picked up."""
        output = game.run(_TO_BARBER + ["talk to barber"])
        assert_output_contains(output, "mine")

    def test_marten_mine_topic_response(self, game):
        output = game.run(_TO_BARBER + [
            "talk to barber", "1", "1", "1", "1", "1", "2",
        ])
        assert_output_contains(output, "another way in")

    def test_marten_why_molly_repeats(self, game):
        """Topic 304 repeats – option 2 for Mine is accessible."""
        output = game.run(_TO_BARBER + [
            "talk to barber", "1", "1", "1", "1", "1", "2",
        ])
        # Mine topic chosen as option 2 (Why Molly repeats as option 1)
        assert_output_contains(output, "borrow Molly")


@pytest.mark.room("Barber Shop")
class TestMolly:
    """Taking Molly the parrot."""

    def test_cannot_take_molly_without_permission(self, game):
        output = game.run(_TO_BARBER + ["take Molly"])
        assert_output_contains(output, "suspicious")

    def test_cookie_makes_molly_trusting(self, game):
        """Giving cookie to Molly sets trusting flag."""
        # Cookie in inventory via _TO_BARBER (taken in Saloon during initial visit)
        output = game.run(_TO_BARBER + ["give cookie to Molly"])
        assert_output_contains(output, "munches")

    def test_take_molly_after_permission(self, game):
        """Full flow: cookie + Marten permission + take."""
        cmds = _TO_BARBER + [
            "talk to barber", "1", "1", "1", "1", "1", "2", "0",
            "give cookie to Molly",
            "talk to Marten", "2", "0",
            "take Molly",
        ]
        output = game.run(cmds)
        assert_output_contains(output, "BRAAAK")
