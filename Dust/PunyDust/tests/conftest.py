"""PunyDust test configuration – wires punytest fixtures to this game."""

from __future__ import annotations

import sys
import pytest
from pathlib import Path

# Add the sibling PunyTest repository root so `punytest` can be imported.
_PUNYTEST_REPO = Path(__file__).resolve().parent.parent.parent.parent.parent / "PunyTest"
if str(_PUNYTEST_REPO) not in sys.path:
    sys.path.insert(0, str(_PUNYTEST_REPO))

# Import shared fixtures and markers from punytest
from PunyTest.conftest_base import *  # noqa: F401,F403

# ---------------------------------------------------------------------------
# Paths
# ---------------------------------------------------------------------------

_HERE = Path(__file__).resolve().parent          # PunyDust/tests/
_GAME_DIR = _HERE.parent                         # PunyDust/
_WORKSPACE = _GAME_DIR.parent.parent              # InteractiveFiction/
_PUNYINFORM_LIB = _WORKSPACE.parent / "PunyInform" / "lib"

# ---------------------------------------------------------------------------
# Fixture overrides
# ---------------------------------------------------------------------------


@pytest.fixture(scope="session")
def story_source() -> Path:
    return _GAME_DIR / "dust.inf"


@pytest.fixture(scope="session")
def story_z5() -> Path | None:
    """Return the pre-built z5 if it exists, else None to trigger compilation."""
    prebuilt = _GAME_DIR / "Build" / "dust.z5"
    if prebuilt.is_file():
        return prebuilt
    return None


@pytest.fixture(scope="session")
def include_paths() -> list[Path]:
    return [_PUNYINFORM_LIB, _GAME_DIR / "lib"]


# ---------------------------------------------------------------------------
# Convenience fixtures that pre-navigate to common starting points
# ---------------------------------------------------------------------------


@pytest.fixture
def game_at_saloon(game):
    """A game session already navigated to the Saloon."""
    output = game.run(["down"], quit_after=False)
    return game


@pytest.fixture
def game_at_main_street(game):
    """A game session already navigated to Main Street."""
    output = game.run([
        "take bag", "down",
        "talk to woman", "1", "1", "1", "1", "1", "0",
        "drink coffee", "drink coffee",
        "out",
    ], quit_after=False)
    return game


@pytest.fixture
def game_at_ranch(game):
    """A game session already navigated to Ranch."""
    output = game.run([
        "take bag", "down",
        "talk to woman", "1", "1", "1", "1", "1", "0",
        "drink coffee", "drink coffee",
        "out", "w",
    ], quit_after=False)
    return game


@pytest.fixture
def game_at_sheriff(game):
    """A game session at Sheriff's Office (after flashback, locked up)."""
    output = game.run([
        "take bag", "down",
        "talk to woman", "1", "1", "1", "1", "1", "0",
        "drink coffee", "drink coffee",
        "out", "w",
        "talk to woman", "1", "1", "2",
    ], quit_after=False)
    return game
