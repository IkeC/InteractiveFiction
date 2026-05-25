#Requires -Version 5.1
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$ProjectRoot = $PSScriptRoot
$InformProject = Join-Path $ProjectRoot 'Staub.inform'
$BuildDir = Join-Path $InformProject 'Build'

$SourceRoot = Join-Path $ProjectRoot '..\..\..'
$Inform7Root = Join-Path $SourceRoot 'Inform7'
$InformInternal = Join-Path $Inform7Root 'Internal'
$InformExternal = Join-Path $env:USERPROFILE 'Documents\Inform'

$CompilerRoot = Join-Path $Inform7Root 'Compilers'
$Inform7 = Join-Path $CompilerRoot 'inform7.exe'
$Inform6 = Join-Path $CompilerRoot 'inform6.exe'
$Inblorb = Join-Path $CompilerRoot 'inblorb.exe'
$gluxePath = Join-Path $PSScriptRoot '..\..\tools\glulxe.exe'

if (-not (Test-Path $InformExternal)) {
    New-Item -ItemType Directory -Force -Path $InformExternal | Out-Null
}

New-Item -ItemType Directory -Force -Path $BuildDir | Out-Null

Write-Host 'Running Inform7...'
Push-Location $BuildDir
& $Inform7 -internal $InformInternal -external $InformExternal -project $InformProject -format=Inform6/32
if ($LASTEXITCODE -ne 0) {
    Pop-Location
    exit $LASTEXITCODE
}

Write-Host 'Running Inform6...'
& $Inform6 -w~S~DG '+include_path=..\Source,.\' auto.inf output.ulx
if ($LASTEXITCODE -ne 0) {
    Pop-Location
    exit $LASTEXITCODE
}

Pop-Location
Push-Location $InformProject

Write-Host 'Running Inblorb...'
& $Inblorb Release.blurb Build\output.gblorb
if ($LASTEXITCODE -ne 0) {
    Pop-Location
    exit $LASTEXITCODE
}

Pop-Location

Write-Host 'Generating Inform7 transcript from walkthrough...'
if (Test-Path $gluxePath) {
    & powershell -ExecutionPolicy Bypass -File (Join-Path $ProjectRoot 'generate_transcript.ps1')
    if ($LASTEXITCODE -ne 0) {
        Write-Host 'Warning: Transcript generation failed, but build is complete.'
    }
    Write-Host 'Build complete: Build\output.ulx, Build\output.gblorb and Tests\Staub.transcript.inform7.txt'
} else {
    Write-Host "Warning: glulxe not found at $gluxePath - skipping transcript generation."
    Write-Host 'Build complete: Build\output.ulx and Build\output.gblorb'
}
