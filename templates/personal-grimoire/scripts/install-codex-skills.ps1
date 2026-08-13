[CmdletBinding()]
param(
    [string]$Destination = (Join-Path $HOME '.agents\skills'),
    [switch]$CopyInsteadOfLink
)

$ErrorActionPreference = 'Stop'
$templateRoot = Split-Path -Parent $PSScriptRoot
$sourceRoot = Join-Path $templateRoot '.agents\skills'

if (-not (Test-Path -LiteralPath $sourceRoot -PathType Container)) {
    throw "Could not find skills at $sourceRoot. Run this script from a personal Grimoire created from the template."
}

$skillNames = 'resume', 'endsession'

foreach ($skillName in $skillNames) {
    $source = Join-Path $sourceRoot $skillName
    $target = Join-Path $Destination $skillName

    if (-not (Test-Path -LiteralPath $source -PathType Container)) {
        throw "Could not find skill source: $source"
    }

    if (Test-Path -LiteralPath $target) {
        throw "Refusing to overwrite existing skill: $target"
    }
}

New-Item -ItemType Directory -Path $Destination -Force | Out-Null

foreach ($skillName in $skillNames) {
    $source = Join-Path $sourceRoot $skillName
    $target = Join-Path $Destination $skillName

    if ($CopyInsteadOfLink) {
        Copy-Item -LiteralPath $source -Destination $target -Recurse
        Write-Output "Copied $skillName to $target. Re-run after updating the personal Grimoire."
        continue
    }

    New-Item -ItemType Junction -Path $target -Target $source | Out-Null
    Write-Output "Linked $skillName to $target"
}
