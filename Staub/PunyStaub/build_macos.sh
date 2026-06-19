#!/usr/bin/env bash
set -euo pipefail

script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
cd "$script_dir"

mkdir -p build

INFORM6="${INFORM6:-inform}"
DFROTZ="${DFROTZ:-dfrotz}"
PUNYINFORMDE="${PUNYINFORMDE:-$script_dir/../../../PunyInformDE}"

if ! command -v "$INFORM6" >/dev/null 2>&1; then
    echo "Inform 6 compiler not found: $INFORM6" >&2
    exit 1
fi

if ! command -v "$DFROTZ" >/dev/null 2>&1; then
    echo "dfrotz interpreter not found: $DFROTZ" >&2
    exit 1
fi

ascii_digraphs() {
    local src="$1"
    local dst="$2"
    mkdir -p "$(dirname "$dst")"
    python3 - "$src" "$dst" <<'PY'
from pathlib import Path
import sys

src = Path(sys.argv[1])
dst = Path(sys.argv[2])
text = src.read_text(encoding="utf-8")
text = text.replace("ä", "ae").replace("ö", "oe").replace("ü", "ue").replace("ß", "ss")
text = text.replace("Ä", "Ae").replace("Ö", "Oe").replace("Ü", "Ue")
dst.write_text(text, encoding="utf-8")
PY
}

echo "Compiling staub.z5..."
"$INFORM6" "+include_path=$PUNYINFORMDE/lib,$PUNYINFORMDE/lib/de" -Cu staub.inf build/staub.z5

echo "Generating ASCII source tree..."
mkdir -p build/ascii_lib/de build/ascii_src
ascii_digraphs "$PUNYINFORMDE/lib/de/globals_de.h" build/ascii_lib/de/globals_de.h
ascii_digraphs "$PUNYINFORMDE/lib/de/chartable_de.h" build/ascii_lib/de/chartable_de.h
ascii_digraphs "$PUNYINFORMDE/lib/de/messages_de.h" build/ascii_lib/de/messages_de.h
ascii_digraphs "$PUNYINFORMDE/lib/de/grammar_de.h" build/ascii_lib/de/grammar_de.h
ascii_digraphs "$PUNYINFORMDE/lib/de/parser_de.h" build/ascii_lib/de/parser_de.h
ascii_digraphs "$PUNYINFORMDE/lib/de/article_de.h" build/ascii_lib/de/article_de.h
ascii_digraphs "$PUNYINFORMDE/lib/de/ext_talk_menu_inline_de.h" build/ascii_lib/de/ext_talk_menu_inline_de.h
ascii_digraphs "$PUNYINFORMDE/lib/puny.h" build/ascii_lib/puny.h
ascii_digraphs "$script_dir/staub.inf" build/ascii_src/staub.inf

echo "Compiling staub.ascii.z5..."
"$INFORM6" "+include_path=$script_dir/build/ascii_lib,$script_dir/build/ascii_lib/de,$script_dir/build/ascii_src,$PUNYINFORMDE/lib,$PUNYINFORMDE/lib/de" staub_ascii.inf build/staub.ascii.z5

echo "Generating transcript..."
python3 "$script_dir/generate_transcript.py" "$script_dir/build/staub.z5" "$script_dir/../Inform7/Tests/Staub.walkthrough.txt" "$script_dir/build/Staub.transcript.txt"

echo "Build complete: build/staub.z5, build/staub.ascii.z5, build/Staub.transcript.txt"
