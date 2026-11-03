# FlowRunner Updater, one-line install for Windows (PowerShell):
#   irm https://raw.githubusercontent.com/komfortendigital/flowrunner-setup/main/install.ps1 | iex
# Downloaded by PowerShell, so Windows shows no SmartScreen warning.
$ErrorActionPreference = "Stop"
$T = Join-Path $env:TEMP ("fr-setup-" + [guid]::NewGuid())
New-Item -ItemType Directory -Path $T | Out-Null
Write-Host "Downloading FlowRunner Updater..."
Invoke-WebRequest -UseBasicParsing -Uri "https://github.com/komfortendigital/flowrunner-setup/releases/latest/download/FlowRunner-Setup-Windows.zip" -OutFile "$T\kit.zip"
Expand-Archive -Path "$T\kit.zip" -DestinationPath $T
$K = Join-Path $T "FlowRunner-Setup-Windows"
& "$K\flowrunner-updater-windows.exe" --setup --kit-config "$K\team-config.json"
Remove-Item -Recurse -Force $T
