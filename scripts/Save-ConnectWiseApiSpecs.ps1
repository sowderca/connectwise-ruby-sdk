#!/usr/bin/env pwsh
#Requires -Version 6
#Requires -Modules Microsoft.PowerShell.Utility, Microsoft.PowerShell.Management

using namespace System;
using namespace System.IO;


[CmdletBinding(
    SupportsPaging = $false,
    RemotingCapability = 'None',
    SupportsTransactions = $false,
    SupportsShouldProcess = $false,
    HelpUri = 'https://support.sowder.io'
)]
[OutputType([FileInfo[]])]
param(
    [Parameter(Mandatory = $true, HelpMessage = 'ConnectWise Manage API version')]
    [string] $ConnectWiseManageAPIVersion,

    [Parameter(Mandatory = $false, HelpMessage = 'Output directory')]
    [string] $OutputPath = 'api',

    [Parameter(Mandatory = $false, HelpMessage = 'Optional flag to also fetch other ConnectWise product Open API specs')]
    [switch] $IncludeOtherProductSpecs
);

Set-StrictMode -Version 'Latest';

Import-Module 'Microsoft.PowerShell.Utility';
Import-Module 'Microsoft.PowerShell.Management';


if (!(Test-Path -Path $OutputPath)) {
    New-Item -Path $OutputPath -ItemType 'Directory' -Force | Out-Null;
}
[string] $tmpPath = [Path]::GetTempPath();
[string] $tmpFolder = [Path]::GetFileNameWithoutExtension([Path]::GetRandomFileName());
[DirectoryInfo] $workingDirectory = New-Item -Path $tmpPath -Name $tmpFolder -ItemType 'Directory';

@('Service', 'Company', 'Expense', 'Finance', 'Marketing', 'Procurement', 'Project', 'Sales', 'Schedule', 'System', 'Time') | ForEach-Object {
    $params = @{
        Method = 'GET'
        Uri = "https://api-na.myconnectwise.net/$($ConnectWiseManageAPIVersion)/services/ApiTools/ApiDocumentation/json/$($_).json"
        OutFile = "$($workingDirectory.FullName)/$($_.ToLower()).json"
    };
    Invoke-RestMethod @params;
}
Get-ChildItem -Path $workingDirectory.FullName -File | Get-Content -Raw | &npx json --deep-merge >> "$($OutputPath)/manage.json";
Remove-Item -Path $workingDirectory -Recurse -Force | Out-Null;
if ($IncludeOtherProductSpecs.IsPresent) {
    # ConnectWise Automate
    Invoke-RestMethod -Method 'GET' -Uri 'https://marketplace.connectwise.com/docs/openapi/json/Automate.txt' -OutFile "$($OutputPath)/automate.json";

    # ConnectWise Control
    Invoke-RestMethod -Method 'GET' -Uri 'https://marketplace.connectwise.com/docs/openapi/json/Control.txt' -OutFile "$($OutputPath)/control.json";

    # ConnectWise Sell
    Invoke-RestMethod -Method 'GET' -Uri 'https://marketplace.connectwise.com/docs/openapi/json/Sell.txt' -OutFile "$($OutputPath)/sell.json"
}
Get-ChildItem -Path $OutputPath -File;