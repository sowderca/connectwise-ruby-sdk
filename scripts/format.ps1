#!/usr/bin/env pwsh
# Iterate through ruby source files in project directories.
Get-ChildItem -Path '.' -File -Recurse | Where-Object { $_.Extension -eq '.rb' } | ForEach-Object { gawk -i inplace -v INPLACE_SUFFIX=.bak -E "$($PSScriptRoot)/header.awk" $_.FullName };

