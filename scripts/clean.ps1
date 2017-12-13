#!/usr/bin/env pwsh
Get-ChildItem -Path '.' -Recurse -File | Where-Object { $_.Extension -eq '.bak' } | Remove-Item;
