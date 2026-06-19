#!/usr/bin/env python3
from __future__ import annotations

import os
import pty
import re
import select
import subprocess
import sys
import time
from pathlib import Path


def build_transcript_entry(command: str, output: str) -> str:
    return f"> {command}\n{output}" if output else f"> {command}\n"


def _append(parts: list[str], text: str) -> None:
    if not text:
        return
    if parts and parts[-1] and not parts[-1].endswith("\n"):
        parts.append("\n")
    parts.append(text)


def _clean_output(text: str) -> str:
    cleaned = re.sub(r"(?m)^>\s*$", "", text)
    cleaned = re.sub(r"(?m)^>\s+", "", cleaned)
    return cleaned.strip("\n")


def _read_available(master_fd: int, timeout: float = 0.1) -> str:
    chunks: list[bytes] = []
    while True:
        ready, _, _ = select.select([master_fd], [], [], timeout)
        if not ready:
            break
        chunk = os.read(master_fd, 4096)
        if not chunk:
            break
        chunks.append(chunk)
    if not chunks:
        return ""
    text = b"".join(chunks).decode("utf-8", errors="replace")
    return text.replace("\r\n", "\n").replace("\r", "\n")


def generate_transcript(story_path: Path, walkthrough_path: Path, out_path: Path) -> None:
    commands = [line.strip() for line in walkthrough_path.read_text(encoding="utf-8").splitlines() if line.strip()]

    master_fd, slave_fd = pty.openpty()
    try:
        proc = subprocess.Popen(
            ["dfrotz", "-m", "-q", "-Z", "0", "-w", "999", "-S", "999", str(story_path)],
            stdin=slave_fd,
            stdout=slave_fd,
            stderr=slave_fd,
            close_fds=True,
        )
    finally:
        os.close(slave_fd)

    try:
        initial_output = _read_available(master_fd, timeout=0.3)
        parts: list[str] = []
        if initial_output:
            parts.append(_clean_output(initial_output))

        for command in commands:
            _append(parts, f"> {command}\n")
            os.write(master_fd, (command + "\n").encode("utf-8"))
            time.sleep(0.05)
            output = _read_available(master_fd, timeout=0.3)
            if output:
                _append(parts, _clean_output(output))

        os.write(master_fd, b"quit\n")
        time.sleep(0.05)
        output = _read_available(master_fd, timeout=0.5)
        if output:
            _append(parts, _clean_output(output))
        if "Are you sure you want to quit?" in output:
            os.write(master_fd, b"y\n")
            time.sleep(0.05)
            output = _read_available(master_fd, timeout=0.5)
            if output:
                _append(parts, _clean_output(output))

        try:
            proc.wait(timeout=5)
        except subprocess.TimeoutExpired:
            proc.terminate()
            proc.wait(timeout=5)

        out_path.write_text("".join(parts), encoding="utf-8")
    finally:
        os.close(master_fd)
        if proc.poll() is None:
            proc.terminate()
            proc.wait(timeout=5)


if __name__ == "__main__":
    if len(sys.argv) != 4:
        raise SystemExit("usage: generate_transcript.py <story> <walkthrough> <out>")
    generate_transcript(Path(sys.argv[1]), Path(sys.argv[2]), Path(sys.argv[3]))
