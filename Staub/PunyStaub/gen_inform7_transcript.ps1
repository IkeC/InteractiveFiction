#Requires -Version 5.1
Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$CanonicalGenerator = Join-Path $PSScriptRoot '..\Inform7\generate_transcript.ps1'
$CanonicalOut = Join-Path $PSScriptRoot '..\Inform7\Tests\Staub.transcript.inform7.txt'
$LegacyOut = Join-Path $PSScriptRoot 'build\Staub.transcript.Inform7.txt'

New-Item -ItemType Directory -Force -Path (Join-Path $PSScriptRoot 'build') | Out-Null

Write-Host "Generating Inform7 transcript..."
& powershell -ExecutionPolicy Bypass -File $CanonicalGenerator
if ($LASTEXITCODE -ne 0) {
    exit $LASTEXITCODE
}

Copy-Item $CanonicalOut $LegacyOut -Force
Write-Host "Transcript written to: $LegacyOut"
