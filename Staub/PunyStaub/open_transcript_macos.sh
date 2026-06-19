#!/usr/bin/env bash
set -euo pipefail

script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
code_bin="/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code"
if [[ -x "$code_bin" ]]; then
    "$code_bin" --diff "$script_dir/../Inform7/Tests/Staub.transcript.inform7.txt" "$script_dir/build/Staub.transcript.txt"
else
    echo "Visual Studio Code CLI not found at $code_bin" >&2
    exit 1
fi
