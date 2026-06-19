#!/usr/bin/env bash
set -euo pipefail

script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
cd "$script_dir"

mkdir -p Build

INFORM6="${INFORM6:-inform}"
DFROTZ="${DFROTZ:-dfrotz}"
PUNYINFORM_ROOT="${PUNYINFORM_ROOT:-/Users/ike/Source/PunyInform}"

if ! command -v "$INFORM6" >/dev/null 2>&1; then
    echo "Inform 6 compiler not found: $INFORM6" >&2
    exit 1
fi

if ! command -v "$DFROTZ" >/dev/null 2>&1; then
    echo "dfrotz interpreter not found: $DFROTZ" >&2
    exit 1
fi

echo "Compiling dust.z5..."
"$INFORM6" "+$PUNYINFORM_ROOT/lib" "++$PUNYINFORM_ROOT/lib/de" "++$script_dir/lib" -v5 -S -c -E1 dust.inf Build/dust.z5

echo "Generating transcript..."
rm -f Build/Dust.transcript.txt
python3 generate_transcript.py Build/dust.z5 tests/Dust.walkthrough.txt Build/Dust.transcript.txt

echo "Build complete: Build/dust.z5, Build/Dust.transcript.txt"
