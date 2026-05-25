"""PunyStaub test configuration."""
from __future__ import annotations
import os
import re
import subprocess
import sys
from pathlib import Path

_HERE = Path(__file__).resolve().parent
_GAME_DIR = _HERE.parent
_PUNYTEST_REPO = Path("C:/Source/PunyTest")
if str(_PUNYTEST_REPO) not in sys.path:
    sys.path.insert(0, str(_PUNYTEST_REPO))

_PUNYINFORMDE = Path("C:/Source/PunyInformDE")

# Point PunyTest's tool finder to the PunyInformDE tools directory.
os.environ.setdefault("DFROTZ", str(_PUNYINFORMDE / "tools" / "dfrotz.exe"))
os.environ.setdefault("INFORM6", str(_PUNYINFORMDE / "tools" / "inform6.exe"))

import pytest
from PunyTest.conftest_base import pytest_configure  # noqa: F401
from PunyTest.runner import compile_story, GameSession, GameOutput
from PunyTest.tools import find_dfrotz, find_inform6

STORY_SOURCE = _GAME_DIR / "staub.inf"
STORY_Z5     = _GAME_DIR / "build" / "staub.z5"

_INPUT_ENCODING  = "cp1252"
_OUTPUT_ENCODING = "utf-8"


def _normalize_dialogue_quotes(text: str) -> str:
    return re.sub(
        r"(?m)^(?P<indent>\s*)'(?P<text>.*)'(?P<trail>\s*)$",
        r'\g<indent>"\g<text>\g<trail>"',
        text,
    )


class DE_GameSession(GameSession):
    """Game session with cp1252 encoding for German umlauts."""

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.prefix_commands: list[str] = []

    def run(self, commands, *, quit_after=True):
        cmds = list(self.prefix_commands) + list(commands)
        entered = list(commands)
        if quit_after:
            cmds.extend(["quit", "j"])
        input_bytes = ("\n".join(cmds) + "\n").encode(_INPUT_ENCODING, errors="replace")
        cmd = [str(self.dfrotz), "-w", str(self.width), "-h", str(self.height), "-p"]
        if self.seed is not None:
            cmd.extend(["-s", str(self.seed)])
        cmd.append(str(self.story_file))
        result = subprocess.run(cmd, input=input_bytes, capture_output=True, timeout=30)
        raw = _normalize_dialogue_quotes(result.stdout.decode(_OUTPUT_ENCODING, errors="replace"))
        lines = raw.splitlines()
        cleaned = [l for l in lines if "Wirklich beenden?" not in l and "Ja oder nein?" not in l]
        return GameOutput(raw=raw, lines=cleaned, commands=entered, quit_after=quit_after)


@pytest.fixture(scope="session")
def story_source():
    return STORY_SOURCE


@pytest.fixture(scope="session")
def story_z5():
    return STORY_Z5 if STORY_Z5.is_file() else None


@pytest.fixture(scope="session")
def include_paths():
    return [_PUNYINFORMDE / "lib", _PUNYINFORMDE / "lib" / "de"]


@pytest.fixture(scope="session")
def compiled_game(story_source, story_z5, include_paths):
    if story_z5 and story_z5.is_file():
        return story_z5
    if find_inform6() is None:
        pytest.skip("inform6 not found")
    result = compile_story(story_source, include_paths=include_paths, output=STORY_Z5)
    return result.z_file


@pytest.fixture
def game(compiled_game):
    if find_dfrotz() is None:
        pytest.skip("dfrotz not found")
    return DE_GameSession(
        compiled_game,
        dfrotz=_PUNYINFORMDE / "tools" / "dfrotz.exe",
        width=200,
    )


@pytest.fixture
def game_at_saloon(game):
    game.prefix_commands = ["runter"]
    return game


_KO_PREFIX = ["runter", "rauf", "nimm tasche", "runter", "raus", "w",
               "rede mit frau", "1", "1", "2"]

_RELEASED_PREFIX = _KO_PREFIX + ["rede mit sheriff", "1", "1", "1", "2", "0", "nimm tasche"]


@pytest.fixture
def game_at_hauptstrasse(game):
    game.prefix_commands = ["runter", "rauf", "nimm tasche", "runter", "raus"]
    return game


@pytest.fixture
def game_after_ko(game):
    game.prefix_commands = list(_KO_PREFIX)
    return game


@pytest.fixture
def game_after_release(game):
    game.prefix_commands = list(_RELEASED_PREFIX)
    return game


@pytest.fixture
def game_at_laden(game):
    game.prefix_commands = list(_RELEASED_PREFIX) + ["raus", "n"]
    return game


@pytest.fixture
def game_at_barbier(game):
    game.prefix_commands = list(_RELEASED_PREFIX) + ["raus", "no"]
    return game


@pytest.fixture
def game_at_galgen(game):
    game.prefix_commands = list(_RELEASED_PREFIX) + ["raus", "o"]
    return game


@pytest.fixture
def game_at_windrad(game):
    game.prefix_commands = list(_RELEASED_PREFIX) + ["raus", "w", "s"]
    return game


@pytest.fixture
def game_at_huegelkette(game):
    game.prefix_commands = list(_RELEASED_PREFIX) + ["raus", "w", "s", "w"]
    return game
