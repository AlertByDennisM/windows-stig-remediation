<#
.SYNOPSIS
    This PowerShell script ensures that the maximum size of the Windows Application event log is at least 32768 KB (32 MB).

.NOTES
    Author          : Dennis Medder
    LinkedIn        : linkedin.com/in/dennis-medder-4177a6143
    GitHub          : github.com/AlertByDennisM
    Date Created    : 2025-12-02
    Last Modified   : 2025-12-05
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-AU-000500

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\STIG-ID-WN11-AU-000500.ps1 
#>

# STIG: Configure Application Event Log MaxSize
# Registry Path: HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog\Application

$RegPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\EventLog\Application"

# Ensure the path exists
if (-not (Test-Path $RegPath)) {
    New-Item -Path $RegPath -Force | Out-Null
}

# Set the MaxSize value to 0x8000 (32768 KB)
New-ItemProperty -Path $RegPath -Name "MaxSize" -PropertyType DWord -Value 0x8000 -Force | Out-Null

Write-Host "STIG setting applied successfully. MaxSize set to 32768 KB (0x8000)." -ForegroundColor Green
