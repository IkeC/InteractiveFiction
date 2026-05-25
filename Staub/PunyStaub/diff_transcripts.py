#!/usr/bin/env python3
"""
Compare PunyStaub transcript with Inform7 original using the same walkthrough.
Generates Staub.transcript.diff.txt with annotated differences.

Usage: python diff_transcripts.py [--regen-i7]
  --regen-i7   Regenerate the Inform7 transcript even if it already exists.
"""
import subprocess
import tempfile
import os
import sys
import re
import difflib
from pathlib import Path

SCRIPT_DIR = Path(__file__).parent
SOURCE_ROOT = (SCRIPT_DIR / ".." / ".." / "..").resolve()
GLULXE = SOURCE_ROOT / "Glulxe" / "glulxe.exe"
ULX = SOURCE_ROOT / "fiction" / "Staub" / "Inform7" / "Staub.inform" / "Build" / "output.ulx"
PUNYINFORMDE = (SOURCE_ROOT / "PunyInformDE").resolve()
DFROTZ = PUNYINFORMDE / "tools" / "dfrotz.exe"
WALKTHROUGH = (SCRIPT_DIR / ".." / "Inform7" / "Tests" / "Staub.walkthrough.txt").resolve()
PUNY_Z5 = SCRIPT_DIR / "build" / "staub.z5"
OUT_I7_SAMEWALK = (SCRIPT_DIR / ".." / "Inform7" / "Tests" / "Staub.transcript.inform7.txt").resolve()
OUT_PUNY = SCRIPT_DIR / "build" / "Staub.transcript.txt"
OUT_DIFF = SCRIPT_DIR / "build" / "Staub.transcript.diff.txt"


def _normalize_dialogue_quotes(text: str) -> str:
    """Convert standalone apostrophe-wrapped speech lines to double quotes."""
    return re.sub(
        r"(?m)^(?P<indent>\s*)'(?P<text>.*)'(?P<trail>\s*)$",
        r'\g<indent>"\g<text>"\g<trail>',
        text,
    )


def _run_inform7_transcript(commands: list[str]) -> str:
    """Run the Inform7 game for the given input stream and return raw output text."""
    cmd_text = "\n".join(commands) + "\n"
    with tempfile.NamedTemporaryFile(mode="wb", suffix=".txt", delete=False) as f:
        f.write(cmd_text.encode("cp1252", errors="replace"))
        tmp_in = f.name
    with tempfile.NamedTemporaryFile(mode="wb", suffix=".txt", delete=False) as f:
        tmp_out = f.name
    try:
        # Use file handles for stdin/stdout to avoid shell redirection issues on Windows
        with open(tmp_in, "rb") as fin, open(tmp_out, "wb") as fout:
            subprocess.run(
                [str(GLULXE), "-q", "-w", "200", "-h", "50", str(ULX)],
                stdin=fin,
                stdout=fout,
                stderr=subprocess.STDOUT,
            )
        raw = Path(tmp_out).read_bytes()
        return raw.decode("cp1252", errors="replace")
    finally:
        os.unlink(tmp_in)
        os.unlink(tmp_out)


def _count_screenbreak_prompts(block: str) -> int:
    """Count continue prompts in a transcript block."""
    return len(re.findall(r"~~~|\(Drücke eine beliebige Taste\)", block))


def read_walkthrough() -> list[str]:
    """Read walkthrough, strip comment lines and blank lines."""
    lines = WALKTHROUGH.read_text(encoding="utf-8").splitlines()
    return [l for l in lines if l.strip() and not l.strip().startswith("#")]


def generate_inform7_transcript(commands: list[str]) -> list[str]:
    """Generate the canonical synthesized Inform7 transcript and mirror it locally."""
    generator = (SCRIPT_DIR / ".." / "Inform7" / "generate_transcript.ps1").resolve()
    subprocess.run(
        [
            "powershell",
            "-ExecutionPolicy",
            "Bypass",
            "-File",
            str(generator),
        ],
        check=True,
    )

    normalized = _normalize_dialogue_quotes(OUT_I7_SAMEWALK.read_text(encoding="utf-8"))
    OUT_I7_SAMEWALK.write_text(normalized, encoding="utf-8")
    return normalized.splitlines()


def _parse_inform7_output_blocks(lines: list[str]) -> list[str]:
    """Parse raw glulxe output into one block per response."""
    blocks: list[str] = []
    current: list[str] = []
    past_header = False

    for line in lines:
        if line.startswith(">"):
            past_header = True
            if current:
                blocks.append("\n".join(current))
            current = [line[1:]]  # strip the leading '>'
        elif past_header:
            current.append(line)

    if current:
        blocks.append("\n".join(current))
    return blocks


def parse_inform7_transcript(lines: list[str]) -> list[str]:
    """
    Parse the synthesized Inform7 transcript into a list of response blocks.
    The file format mirrors the dfrotz transcript: each command begins with
    a '> command' line, followed by the game's output for that command.
    Returns one string per command response.
    """
    blocks: list[str] = []
    current: list[str] = []
    past_header = False

    for line in lines:
        if line.startswith(">"):
            past_header = True
            if current:
                blocks.append("\n".join(current))
            current = []
        elif past_header:
            current.append(line)

    if current:
        blocks.append("\n".join(current))
    return blocks


def parse_dfrotz_transcript(lines: list[str]) -> list[tuple[str, str]]:
    """
    Parse dfrotz transcript into (command, output) pairs.
    Lines starting with '> ' are command echoes; everything after is output.
    Returns one pair per command executed.
    """
    pairs: list[tuple[str, str]] = []
    current_cmd: str | None = None
    current_out: list[str] = []
    past_header = False

    for line in lines:
        if line.startswith("> ") or line == ">":
            past_header = True
            if current_cmd is not None:
                pairs.append((current_cmd, "\n".join(current_out)))
            current_cmd = line[2:].strip() if line.startswith("> ") else ""
            current_out = []
        elif past_header:
            current_out.append(line)
        # header lines before first '> ' are ignored

    if current_cmd is not None:
        pairs.append((current_cmd, "\n".join(current_out)))
    return pairs


def reflow(text: str) -> list[str]:
    """
    Normalize transcript text for comparison:
    - Strip leading/trailing whitespace per line.
    - Collapse consecutive blank lines.
    - Join wrapped lines within the same paragraph into one line.
    - Strip dialogue-selection markers like [option text] / ["option text"].
    Returns list of paragraph strings.
    """
    lines = [l.strip() for l in text.splitlines()]

    # Remove dialogue-selection echo markers at start of block
    # Inform7: ["option text"]   PunyStaub: [option text]
    lines = [l for l in lines if not re.match(r'^\[".+"\]$', l)]
    lines = [l for l in lines if not re.match(r'^\[.+\]$', l)]

    # Remove lines that are just menu option numbers/labels like "[1] "..."
    # (keep only the actual game text)

    # Split into paragraphs on blank lines
    paragraphs: list[str] = []
    current: list[str] = []
    for line in lines:
        if line == "":
            if current:
                paragraphs.append(" ".join(current))
                current = []
        else:
            current.append(line)
    if current:
        paragraphs.append(" ".join(current))

    return [p for p in paragraphs if p]


def make_diff_section(cmd: str, i7_text: str, ps_text: str) -> list[str]:
    """Produce a diff section for one command."""
    i7_paras = reflow(i7_text)
    ps_paras = reflow(ps_text)

    if i7_paras == ps_paras:
        return []  # identical – no diff needed

    out: list[str] = []
    # unified diff between paragraphs
    diff = list(difflib.unified_diff(
        i7_paras, ps_paras,
        fromfile="Inform7",
        tofile="PunyStaub",
        lineterm="",
    ))
    if not diff:
        return []

    out.append(f"COMMAND: {cmd!r}")
    out.extend(diff)
    out.append("")
    return out


def main() -> None:
    regen_i7 = "--regen-i7" in sys.argv

    print("Reading walkthrough …")
    commands = read_walkthrough()
    print(f"  {len(commands)} commands")

    if regen_i7:
        print("Generating Inform7 transcript (same walkthrough) …")
        i7_lines = generate_inform7_transcript(commands)
        print(f"  Written to {OUT_I7_SAMEWALK}")
    else:
        if not OUT_I7_SAMEWALK.exists():
            raise FileNotFoundError(
                f"Inform7 transcript not found: {OUT_I7_SAMEWALK}. "
                "Run the 'Staub Build' task first."
            )
        print(f"Using Inform7 transcript from Staub Build: {OUT_I7_SAMEWALK}")
        i7_text = _normalize_dialogue_quotes(OUT_I7_SAMEWALK.read_text(encoding="utf-8"))
        OUT_I7_SAMEWALK.write_text(i7_text, encoding="utf-8")
        i7_lines = i7_text.splitlines()

    print("Reading PunyStaub transcript …")
    ps_text = _normalize_dialogue_quotes(OUT_PUNY.read_text(encoding="utf-8"))
    OUT_PUNY.write_text(ps_text, encoding="utf-8")
    ps_lines = ps_text.splitlines()

    print("Parsing transcripts …")
    i7_blocks = parse_inform7_transcript(i7_lines)
    ps_pairs = parse_dfrotz_transcript(ps_lines)
    print(f"  Inform7:   {len(i7_blocks)} blocks")
    print(f"  PunyStaub: {len(ps_pairs)} pairs")

    n = min(len(commands), len(i7_blocks), len(ps_pairs))
    print(f"  Comparing {n} command/response pairs …")

    header = [
        "=" * 80,
        "DIFF: Inform7 vs PunyStaub (same walkthrough)",
        f"Walkthrough: {WALKTHROUGH}",
        f"Inform7 transcript: {OUT_I7_SAMEWALK}",
        f"PunyStaub transcript: {OUT_PUNY}",
        "=" * 80,
        "Lines starting with '-' are only in Inform7.",
        "Lines starting with '+' are only in PunyStaub.",
        "=" * 80,
        "",
    ]

    diff_sections: list[str] = []
    diffs_found = 0

    for i in range(n):
        section = make_diff_section(commands[i], i7_blocks[i], ps_pairs[i][1])
        if section:
            diffs_found += 1
            diff_sections.extend(section)

    footer = [
        "=" * 80,
        f"Total: {diffs_found} differing commands out of {n} compared.",
        "=" * 80,
    ]

    all_lines = header + diff_sections + footer
    OUT_DIFF.write_text("\n".join(all_lines), encoding="utf-8")
    print(f"\nDiff written to: {OUT_DIFF}")
    print(f"Differing commands: {diffs_found} / {n}")


if __name__ == "__main__":
    main()
