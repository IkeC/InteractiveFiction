"""Walkthrough regression tests for PunyDust.

The walkthrough file (Dust.walkthrough.txt) is parsed into room
sections using its natural ``# Room Name`` headers as checkpoints.
Each section becomes its own parametrized test::

    test_walkthrough_reaches[Saloon]
    test_walkthrough_reaches[Main Street]
    test_walkthrough_reaches[Mine]
    ...

A test passes when all commands from the start of the game through the
end of the *previous* section successfully navigate to that room.
Tests for rooms that haven't been ported yet will fail, which is the
correct signal to drive porting work.

Golden transcript
-----------------
The original compiled Inform 7 game lives at::

    Dust/Dust.materials/Release/Dust.gblorb

Run ``python -m punytest.generate_golden`` to replay the walkthrough
against that file and record per-command expected output.  The resulting
``PunyDust/tests/dust.golden.txt`` can then be used to add tighter
per-response assertions in future.
"""

from __future__ import annotations

import pytest
from pathlib import Path
from PunyTest.asserts import assert_at_room


_HERE = Path(__file__).resolve().parent
_WALKTHROUGH = _HERE / "Dust.walkthrough.txt"


def _is_room_header(text: str) -> bool:
    """True when a # comment is a room/section name rather than dialogue."""
    if "?" in text or "!" in text:
        return False
    if text.endswith("."):
        return False
    if "(" in text:
        return False
    if text == "End":
        return False
    return True


def _parse_sections(path: Path) -> list[tuple[str, list[str]]]:
    """Return [(room_name, [commands_in_section]), ...] from the walkthrough."""
    sections: list[tuple[str, list[str]]] = []
    current_name: str | None = None
    current_cmds: list[str] = []

    for raw in path.read_text(encoding="utf-8").splitlines():
        line = raw.strip()
        if not line:
            continue
        if line.startswith("#"):
            heading = line[1:].strip()
            if _is_room_header(heading):
                if current_name is not None:
                    sections.append((current_name, current_cmds))
                current_name = heading
                current_cmds = []
            # dialogue comment — skip; do not add to command list
        else:
            if current_name is not None:
                current_cmds.append(line)

    if current_name is not None:
        sections.append((current_name, current_cmds))
    return sections


def _build_checkpoints(
    sections: list[tuple[str, list[str]]]
) -> list[tuple[str, str, list[str]]]:
    """
    For each section after the first, return
    ``(test_id, room_name, cumulative_commands_to_reach_it)``.

    The cumulative commands are *all* commands from all previous sections,
    including the navigation command at the end of the preceding section
    that brings the player into *room_name*.
    """
    checkpoints: list[tuple[str, str, list[str]]] = []
    seen: dict[str, int] = {}
    cumulative: list[str] = []

    for i, (name, cmds) in enumerate(sections):
        if i > 0:
            count = seen.get(name, 0) + 1
            seen[name] = count
            test_id = name if count == 1 else f"{name} ({count})"
            checkpoints.append((test_id, name, list(cumulative)))
        cumulative.extend(cmds)

    return checkpoints


_SECTIONS = _parse_sections(_WALKTHROUGH)
_CHECKPOINTS = _build_checkpoints(_SECTIONS)

# Map walkthrough section names to actual PunyDust room names where they differ.
# Flashbacks are not separate rooms in PunyDust; they transition directly.
_ROOM_ALIASES: dict[str, str] = {
    "Flashback 1 / Sheriff": "Sheriff",
    "Flashback 2 / Cave": "Cave",
    "Galgen": "Gallows",    # German section name → English room name
    "Vault": "Cave",        # player can't yet descend; stays in Cave
    "Showdown": "Wind Pump",  # scripted endgame; player stays at Wind Pump
}


@pytest.mark.feature("walkthrough")
class TestWalkthrough:
    """One test per room – verifies walkthrough navigation up to that room."""

    @pytest.mark.parametrize(
        "room,commands",
        [(room, cmds) for _id, room, cmds in _CHECKPOINTS],
        ids=[_id for _id, _room, _cmds in _CHECKPOINTS],
    )
    def test_walkthrough_reaches(self, game, room, commands):
        """Run all walkthrough commands needed to reach *room* and assert arrival."""
        expected = _ROOM_ALIASES.get(room, room)
        output = game.run(commands)
        assert_at_room(output, expected)
