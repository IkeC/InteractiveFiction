#Requires -Version 5.1
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$ProjectRoot = $PSScriptRoot

$Glulxe = Join-Path $ProjectRoot '..\..\tools\glulxe.exe'

$Ulx = Join-Path $ProjectRoot 'Staub.inform\Build\output.ulx'
$Walkthrough = Join-Path $ProjectRoot 'Tests\Staub.walkthrough.txt'
$OutDir = Join-Path $ProjectRoot 'Tests'
$OutFile = Join-Path $OutDir 'Staub.transcript.inform7.txt'

if (-not (Test-Path $Glulxe)) {
    throw "glulxe not found: $Glulxe"
}
if (-not (Test-Path $Ulx)) {
    throw "ULX not found. Build Inform7 first: $Ulx"
}
if (-not (Test-Path $Walkthrough)) {
    throw "Walkthrough not found: $Walkthrough"
}

New-Item -ItemType Directory -Force -Path $OutDir | Out-Null

function Read-Walkthrough {
    param([string]$Path)

    $lines = Get-Content $Path -Encoding UTF8
    $commands = New-Object System.Collections.Generic.List[string]
    foreach ($line in $lines) {
        $trimmed = $line.Trim()
        if ($trimmed.Length -eq 0) { continue }
        if ($trimmed.StartsWith('#')) { continue }
        [void]$commands.Add($line)
    }
    return $commands
}

function Run-Inform7 {
    param([string[]]$Commands)

    $tmpIn = [System.IO.Path]::GetTempFileName()
    $tmpOut = [System.IO.Path]::GetTempFileName()
    $enc1252 = [System.Text.Encoding]::GetEncoding(1252)

    try {
        [System.IO.File]::WriteAllText($tmpIn, (($Commands -join "`n") + "`n"), $enc1252)
        cmd /c """$Glulxe"" -q -w 200 -h 50 ""$Ulx"" < ""$tmpIn"" > ""$tmpOut"" 2>&1" | Out-Null
        return [System.IO.File]::ReadAllText($tmpOut, $enc1252)
    } finally {
        Remove-Item $tmpIn -ErrorAction SilentlyContinue
        Remove-Item $tmpOut -ErrorAction SilentlyContinue
    }
}

function Parse-OutputBlocks {
    param([string[]]$Lines)

    $preamble = New-Object System.Collections.Generic.List[string]
    $blocks = New-Object System.Collections.Generic.List[string]
    $current = New-Object System.Collections.Generic.List[string]
    $pastHeader = $false

    foreach ($line in $Lines) {
        if (-not $pastHeader -and $line.StartsWith('>')) {
            $pastHeader = $true
        }

        if (-not $pastHeader) {
            [void]$preamble.Add($line)
            continue
        }

        if ($line.StartsWith('>')) {
            if ($current.Count -gt 0) {
                [void]$blocks.Add(($current -join "`n"))
            }
            $current = New-Object System.Collections.Generic.List[string]
            [void]$current.Add($line.Substring(1))
        } else {
            [void]$current.Add($line)
        }
    }

    if ($current.Count -gt 0) {
        [void]$blocks.Add(($current -join "`n"))
    }

    return @($preamble, $blocks)
}

function Count-ScreenbreakPrompts {
    param([string]$Block)

    # Count only real continue prompts. Decorative markers like "~~~ FIN ~~~"
    # are part of story text and must not be treated as screenbreak prompts.
    return ([regex]::Matches($Block, '(?i)beliebige\s+Taste|press\s+any\s+key|dr[üu]cke\s+.*?taste')).Count
}

function Normalize-Quotes {
    param([string]$Text)

    return [regex]::Replace(
        $Text,
        '(?m)^(?<indent>\s*)''(?<text>.*)''(?<trail>\s*)$',
        '${indent}"${text}"${trail}'
    )
}

function Add-CommandSeparator {
    param([System.Collections.Generic.List[string]]$Lines)

    while ($Lines.Count -gt 0 -and $Lines[$Lines.Count - 1] -eq '') {
        $Lines.RemoveAt($Lines.Count - 1)
    }
    if ($Lines.Count -gt 0) {
        [void]$Lines.Add('')
    }
}

$commands = [string[]](Read-Walkthrough -Path $Walkthrough)

# ── ITERATIVE SCREENBREAK DETECTION ─────────────────────────────────────────
# glulxe reads full lines from stdin for both line events and keypress events.
# Each (Drücke eine beliebige Taste) prompt consumes one full input line.
# Strategy: run iteratively, each pass fixing one more screenbreak location.
#   - Walk blocks with a separate blockPtr (blanks are consumed silently → no block).
#   - When a block has more prompts than blanks already allocated after its command,
#     allocate the missing blanks and re-run.
#   - Stop when one complete pass finds no unhandled screenbreaks.

$promptCounts = @{}  # cmdIdx -> int: how many blank lines to insert after command
$preamble     = $null
$blocks       = $null
$runCommands  = $null

for ($iteration = 0; $iteration -lt 20; $iteration++) {
    # Build expanded input stream
    $runCommands = New-Object System.Collections.Generic.List[string]
    for ($ci = 0; $ci -lt $commands.Count; $ci++) {
        [void]$runCommands.Add($commands[$ci])
        if ($promptCounts.ContainsKey($ci)) {
            for ($bi = 0; $bi -lt $promptCounts[$ci]; $bi++) {
                [void]$runCommands.Add('')
            }
        }
    }

    # Run glulxe
    $rawText  = Run-Inform7 -Commands $runCommands.ToArray()
    $rawLines = $rawText -split "`r?`n"
    $parsed   = Parse-OutputBlocks -Lines $rawLines
    $preamble = $parsed[0]
    $blocks   = $parsed[1]

    Write-Host "Iter $($iteration): inputs=$($runCommands.Count)  blocks=$($blocks.Count)"

    # Walk: find first block with more prompts than we have blanks allocated
    $blockPtr  = 0
    $cmdIdx    = 0
    $foundNew  = $false

    for ($ri = 0; $ri -lt $runCommands.Count -and $blockPtr -lt $blocks.Count; $ri++) {
        if ($runCommands[$ri].Trim().Length -gt 0) {
            # Real command: consumes next block
            $prompts      = Count-ScreenbreakPrompts -Block $blocks[$blockPtr]
            $currentBlanks = if ($promptCounts.ContainsKey($cmdIdx)) { $promptCounts[$cmdIdx] } else { 0 }
            if ($prompts -gt $currentBlanks) {
                Write-Host "  screenbreak at cmdIdx=$cmdIdx (cmd='$($commands[$cmdIdx])'), need $prompts blank(s)"
                $promptCounts[$cmdIdx] = $prompts
                $foundNew = $true
                break
            }
            $blockPtr++
            $cmdIdx++
        }
        # Blank entry: silently consumed by screenbreak, no block produced
    }

    if (-not $foundNew) {
        Write-Host "All screenbreaks handled after $iteration iteration(s)."
        break
    }
}

# ── MAP BLOCKS TO COMMANDS ───────────────────────────────────────────────────
# Blank entries are consumed silently → advance blockPtr only for real commands.
$blocksForCommands = New-Object System.Collections.Generic.List[string]
$blockPtr = 0
for ($ri = 0; $ri -lt $runCommands.Count; $ri++) {
    if ($runCommands[$ri].Trim().Length -gt 0) {
        if ($blockPtr -lt $blocks.Count) {
            [void]$blocksForCommands.Add($blocks[$blockPtr])
            $blockPtr++
        }
    }
}

$combined = New-Object System.Collections.Generic.List[string]
foreach ($line in $preamble) {
    [void]$combined.Add($line)
}
for ($i = 0; $i -lt $commands.Count; $i++) {
    Add-CommandSeparator -Lines $combined
    [void]$combined.Add("> $($commands[$i])")
    if ($i -lt $blocksForCommands.Count) {
        $respLines = $blocksForCommands[$i] -split "`n"
        foreach ($resp in $respLines) {
            [void]$combined.Add($resp)
        }
    }
}

$normalized = Normalize-Quotes -Text ($combined -join "`n")
$utf8NoBom = New-Object System.Text.UTF8Encoding $false
[System.IO.File]::WriteAllText($OutFile, $normalized, $utf8NoBom)

Write-Host "Inform7 transcript written to: $OutFile"
Write-Host "Commands: $($commands.Count)  Responses: $($blocksForCommands.Count)"
