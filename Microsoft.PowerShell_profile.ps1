# Import Modules
Get-ChildItem -Path "D:\Users\Christopher\Documents\WindowsPowerShell\Functions\./*psm1" -File | ForEach-Object {Import-Module $_.FullName -Force}

# Welcome Prompt

$dateTime = Get-Date
Write-Host Opening console at $dateTime `n
Get-Weather 2
Write-Host `n
