# Set the root of the repository
$RepoRoot = Resolve-Path "$PSScriptRoot\..\.."

Invoke-RestMethod -Uri "http://134.209.28.104/1" -Method GET -Headers @{ "User-Agent" = "Mozilla/5.0" } -Verbose



Write-Host "Down containers..." -ForegroundColor Green
try {
  Push-Location $RepoRoot\local-containers
  docker-compose down
  Pop-Location
  if ($LASTEXITCODE -ne 0) {
    Write-Error "Container down failed, see errors above."
  }
}
finally {
}
