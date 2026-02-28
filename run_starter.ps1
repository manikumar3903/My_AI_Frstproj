# run_starter.ps1 — create .venv if missing, activate and run starter_project\main.py
$venvPath = Join-Path $PSScriptRoot ".venv"
if (-not (Test-Path $venvPath)) {
    Write-Host "Creating virtual environment .venv..."
    python -m venv .venv
}
$activate = Join-Path $PSScriptRoot ".venv\Scripts\Activate.ps1"
if (Test-Path $activate) {
    Write-Host "Activating virtual environment and running starter_project\main.py"
    & $activate
    python starter_project\main.py
} else {
    Write-Host "Activation script not found - running with current Python"
    python starter_project\main.py
}
