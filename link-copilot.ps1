[CmdletBinding()]
param()

$ErrorActionPreference = 'Stop'

$targetPath = [System.IO.Path]::GetFullPath((Join-Path $PSScriptRoot 'dot-copilot'))
$linkPath = Join-Path $HOME '.copilot'

if (-not (Test-Path -LiteralPath $targetPath -PathType Container)) {
    throw "The repository target directory does not exist: $targetPath"
}

if (Test-Path -LiteralPath $linkPath) {
    $existing = Get-Item -LiteralPath $linkPath -Force
    if ($existing.LinkType -eq 'Junction' -and $existing.Target) {
        $existingTarget = [System.IO.Path]::GetFullPath([string]$existing.Target)
        if ([string]::Equals($existingTarget, $targetPath, [System.StringComparison]::OrdinalIgnoreCase)) {
            Write-Output "Junction already points to $targetPath"
            exit 0
        }
    }

    throw "Path already exists; leaving it unchanged: $linkPath"
}

New-Item -ItemType Junction -Path $linkPath -Target $targetPath | Out-Null
Write-Output "Created junction: $linkPath -> $targetPath"
