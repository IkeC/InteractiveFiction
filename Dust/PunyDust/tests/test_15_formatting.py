"""Tests for output formatting rules in PunyDust.

Rules (highest priority first):
1. No two blank lines in succession
2. Always a blank line before a prompt (>)
3. Always a blank line before and after conversation options ([1], [2], [0])
4. After a paragraph break, a blank line must follow

Note: In dfrotz subprocess mode (non-interactive), the `>` prompt character
gets merged with the response text on the same line (input isn't echoed).
This makes prompt detection unreliable. Tests therefore focus on the
"no double blank lines" rule (which covers the root causes of rules 2-4)
and verify specific structural output patterns.
"""

from __future__ import annotations

import re
import pytest
from PunyTest.asserts import assert_output_contains


def _check_no_double_blank_lines(text: str) -> list[str]:
    """Return a list of violations where two or more blank lines appear in a row."""
    violations = []
    lines = text.split("\n")
    blank_count = 0
    for i, line in enumerate(lines, 1):
        if line.strip() == "":
            blank_count += 1
            if blank_count >= 2:
                # Find surrounding context
                start = max(0, i - 4)
                end = min(len(lines), i + 2)
                context = "\n".join(f"  {n}: {lines[n]!r}" for n in range(start, end))
                violations.append(f"Double blank line at line {i}:\n{context}")
        else:
            blank_count = 0
    return violations


# ---------------------------------------------------------------------------
# Helper to run commands and extract the game output portion
# ---------------------------------------------------------------------------

def _game_output_text(game, commands: list[str]) -> str:
    """Run commands and return the raw output text."""
    output = game.run(commands)
    return output.text


# ---------------------------------------------------------------------------
# Tests
# ---------------------------------------------------------------------------


@pytest.mark.feature("formatting")
class TestFormattingRoom:
    """Formatting rules in the starting Room."""

    def test_examine_no_double_blanks(self, game):
        text = _game_output_text(game, ["look", "examine bed", "examine door"])
        violations = _check_no_double_blank_lines(text)
        assert violations == [], "\n".join(violations)


@pytest.mark.feature("formatting")
class TestFormattingSaloon:
    """Formatting rules in the Saloon."""

    def test_examine_ella_no_double_blanks(self, game):
        text = _game_output_text(game, ["down", "examine woman"])
        violations = _check_no_double_blank_lines(text)
        assert violations == [], "\n".join(violations)

    def test_saloon_revisit_no_double_blanks(self, game):
        """Re-entering the Saloon should not produce double blank lines."""
        text = _game_output_text(game, [
            "take bag", "down",
            "talk to woman", "1", "1", "1", "1", "1", "0",
            "drink coffee", "drink coffee",
            "out",  # Main Street
            "s",    # Back to Saloon
            "look",
        ])
        violations = _check_no_double_blank_lines(text)
        assert violations == [], "\n".join(violations)

    def test_conversation_exit_no_double_blanks(self, game):
        """Exiting a conversation with 0 should not produce double blank lines."""
        text = _game_output_text(game, [
            "down",
            "talk to woman",
            "1",  # How are you doing?
            "0",  # End conversation
        ])
        violations = _check_no_double_blank_lines(text)
        assert violations == [], "\n".join(violations)

    def test_full_conversation_no_double_blanks(self, game):
        """A full conversation tree should not produce double blank lines."""
        text = _game_output_text(game, [
            "down",
            "talk to woman",
            "1",  # How are you doing?
            "1",  # Looks wild in here.
            "1",  # A coffee please.
            "1",  # There was a fight?
            "1",  # Mifflin?
            "0",  # End conversation
        ])
        violations = _check_no_double_blank_lines(text)
        assert violations == [], "\n".join(violations)

    def test_cookie_reminder_no_double_blanks(self, game):
        """Cookie reminder in Saloon revisit should not produce double blank lines."""
        text = _game_output_text(game, [
            "take bag", "down",
            "talk to woman", "1", "1", "1", "1", "1", "0",
            "drink coffee", "drink coffee",
            "out",   # Main Street
            "s",     # Back to Saloon — cookie reminder triggers
        ])
        violations = _check_no_double_blank_lines(text)
        assert violations == [], "\n".join(violations)


@pytest.mark.feature("formatting")
class TestFormattingMainStreet:
    """Formatting rules on Main Street and beyond."""

    def _go_to_mainstreet(self):
        return [
            "take bag", "down",
            "talk to woman", "1", "1", "1", "1", "1", "0",
            "drink coffee", "drink coffee",
            "out",
        ]

    def test_mainstreet_no_double_blanks(self, game):
        text = _game_output_text(game, self._go_to_mainstreet() + ["look"])
        violations = _check_no_double_blank_lines(text)
        assert violations == [], "\n".join(violations)
