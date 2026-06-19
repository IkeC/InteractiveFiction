import unittest
from pathlib import Path
import sys

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from generate_transcript import build_transcript_entry


class TranscriptGenerationTests(unittest.TestCase):
    def test_build_transcript_entry_prefixes_walkthrough_commands(self):
        entry = build_transcript_entry("look", "You are in a room.\n")
        self.assertEqual(entry, "> look\nYou are in a room.\n")


if __name__ == "__main__":
    unittest.main()
