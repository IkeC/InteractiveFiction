#Requires -Version 3.0
Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$TOOLS   = "$PSScriptRoot\..\..\tools"
$INFORM6 = "$TOOLS\inform6.exe"
$DFROTZ  = "$TOOLS\dfrotz.exe"
$INCLUDE = "+C:\Source\PunyInform\lib"
$INCLUDE_LOCAL = "++$PSScriptRoot\lib"

$buildDir = "$PSScriptRoot\Build"
New-Item -ItemType Directory -Force -Path $buildDir | Out-Null

Write-Host "Compiling dust.z5..."
& $INFORM6 $INCLUDE $INCLUDE_LOCAL -v5 -S -c -E1 "$PSScriptRoot\dust.inf" "$buildDir\dust.z5"
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

Write-Host "Generating transcript..."
$utf8NoBom = New-Object System.Text.UTF8Encoding $false
$outPath = "$buildDir\Dust.transcript.txt"
Remove-Item $outPath -ErrorAction SilentlyContinue

$tmpWalkthrough = [System.IO.Path]::GetTempFileName()
try {
    $lines = Get-Content "$PSScriptRoot\tests\Dust.walkthrough.txt" -Encoding UTF8
    [System.IO.File]::WriteAllLines($tmpWalkthrough, $lines, $utf8NoBom)
    cmd /c """$DFROTZ"" -m -q -Z 0 -T -n ""$outPath"" ""$buildDir\dust.z5"" < ""$tmpWalkthrough"""
    if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
} finally {
    Remove-Item $tmpWalkthrough -ErrorAction SilentlyContinue
}

Write-Host "Build complete: Build\dust.z5, Build\Dust.transcript.txt"