#Requires -Version 3.0
Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$PUNYINFORMDE = "$PSScriptRoot\..\..\..\PunyInformDE"
$TOOLS        = "$PSScriptRoot\..\..\tools"
$INFORM6      = "$TOOLS\inform6.exe"
$DFROTZ       = "$TOOLS\dfrotz.exe"
$INCLUDE      = "+include_path=$PUNYINFORMDE\lib,$PUNYINFORMDE\lib\de"

New-Item -ItemType Directory -Force -Path "$PSScriptRoot\build" | Out-Null

Write-Host "Compiling staub.z5..."
& $INFORM6 $INCLUDE -Cu "$PSScriptRoot\staub.inf" "$PSScriptRoot\build\staub.z5"
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

# ─── ASCII build ─────────────────────────────────────────────────────────────
# All German umlauts are replaced by digraphs (ae/oe/ue/ss) so that the
# compiled binary is fully ASCII-clean for retro platforms that cannot display
# high-ASCII characters (Commodore 64, ZX Spectrum, etc.).

function Convert-ToAsciiDigraphs {
    param([string]$Source, [string]$Destination)
    $destDir = Split-Path $Destination -Parent
    if ($destDir -and (-not (Test-Path $destDir))) {
        New-Item -ItemType Directory -Force -Path $destDir | Out-Null
    }
    $lines = (Get-Content $Source -Encoding UTF8) `
        -replace [char]0xe4, "ae" `
        -replace [char]0xf6, "oe" `
        -replace [char]0xfc, "ue" `
        -replace [char]0xdf, "ss" `
        -replace ([char]0xc4 + "(?=[A-Z])"), "AE" `
        -replace [char]0xc4, "Ae" `
        -replace ([char]0xd6 + "(?=[A-Z])"), "OE" `
        -replace [char]0xd6, "Oe" `
        -replace ([char]0xdc + "(?=[A-Z])"), "UE" `
        -replace [char]0xdc, "Ue"
    $utf8NoBom = New-Object System.Text.UTF8Encoding $false
    [System.IO.File]::WriteAllLines($Destination, $lines, $utf8NoBom)
}

Write-Host "Generating ASCII source tree..."
$ASCII_LIB    = "$PSScriptRoot\build\ascii_lib"
$ASCII_LIB_DE = "$PSScriptRoot\build\ascii_lib\de"
$ASCII_SRC    = "$PSScriptRoot\build\ascii_src"
New-Item -ItemType Directory -Force -Path $ASCII_LIB    | Out-Null
New-Item -ItemType Directory -Force -Path $ASCII_LIB_DE | Out-Null
New-Item -ItemType Directory -Force -Path $ASCII_SRC    | Out-Null

Convert-ToAsciiDigraphs "$PUNYINFORMDE\lib\de\globals_de.h"               "$ASCII_LIB_DE\globals_de.h"
Convert-ToAsciiDigraphs "$PUNYINFORMDE\lib\de\chartable_de.h"             "$ASCII_LIB_DE\chartable_de.h"
Convert-ToAsciiDigraphs "$PUNYINFORMDE\lib\de\messages_de.h"              "$ASCII_LIB_DE\messages_de.h"
Convert-ToAsciiDigraphs "$PUNYINFORMDE\lib\de\grammar_de.h"               "$ASCII_LIB_DE\grammar_de.h"
Convert-ToAsciiDigraphs "$PUNYINFORMDE\lib\de\parser_de.h"                "$ASCII_LIB_DE\parser_de.h"
Convert-ToAsciiDigraphs "$PUNYINFORMDE\lib\de\article_de.h"               "$ASCII_LIB_DE\article_de.h"
Convert-ToAsciiDigraphs "$PUNYINFORMDE\lib\de\ext_talk_menu_inline_de.h"  "$ASCII_LIB_DE\ext_talk_menu_inline_de.h"
Convert-ToAsciiDigraphs "$PUNYINFORMDE\lib\puny.h"                        "$ASCII_LIB\puny.h"
Convert-ToAsciiDigraphs "$PSScriptRoot\staub.inf"                         "$ASCII_SRC\staub.inf"

Write-Host "Compiling staub.ascii.z5..."
$ASCII_INCLUDE = "+include_path=$ASCII_LIB,$ASCII_LIB_DE,$ASCII_SRC,$PUNYINFORMDE\lib,$PUNYINFORMDE\lib\de"
& $INFORM6 $ASCII_INCLUDE "$PSScriptRoot\staub_ascii.inf" "$PSScriptRoot\build\staub.ascii.z5"
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

Write-Host "Generating transcript..."
$utf8NoBom = New-Object System.Text.UTF8Encoding $false
$outPath = "$PSScriptRoot\build\Staub.transcript.txt"
Remove-Item $outPath -ErrorAction SilentlyContinue

$tmpWalkthrough = [System.IO.Path]::GetTempFileName()
try {
    $lines = Get-Content "$PSScriptRoot\..\Inform7\Tests\Staub.walkthrough.txt" -Encoding UTF8
    [System.IO.File]::WriteAllLines($tmpWalkthrough, $lines, $utf8NoBom)
    cmd /c """$DFROTZ"" -m -q -Z 0 -T -w 999 -S 999 -n ""$outPath"" ""$PSScriptRoot\build\staub.z5"" < ""$tmpWalkthrough"""
} finally {
    Remove-Item $tmpWalkthrough -ErrorAction SilentlyContinue
}

Write-Host "Build complete: build\staub.z5, build\staub.ascii.z5, build\Staub.transcript.txt"

# ─── Diff generation ─────────────────────────────────────────────────────────
Write-Host "Generating transcript diff..."
& powershell -ExecutionPolicy Bypass -File "$PSScriptRoot\gen_diff.ps1" -DiffOnly
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
