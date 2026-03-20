<#
.SYNOPSIS
    This PowerShell script ensures that Basic authentication is disabled for Windows Remote Management (WinRM).

.NOTES
    Author          : Dennis Medder
    LinkedIn        : linkedin.com/in/dennis-medder-4177a6143
    GitHub          : github.com/AlertByDennisM
    Date Created    : 2026-03-20
    Last Modified   : 2026-03-20
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000345

.TESTED ON
    Date(s) Tested  :
    Tested By       :
    Systems Tested  :
    PowerShell Ver. :

.USAGE
    Example syntax:
    PS C:\> .\WN11-CC-000345-WinRM-AllowBasic.ps1
#>

# STIG: Disable WinRM Basic Authentication
# Registry Path: HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WinRM\Service

$RegPath = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WinRM\Service'
$Name    = 'AllowBasic'
$Value   = 0

# Ensure the key (folder) exists
if (-not (Test-Path $RegPath)) {
    New-Item -Path $RegPath -Force | Out-Null
}

# Create or update the DWORD value
New-ItemProperty -Path $RegPath -Name $Name -PropertyType DWord -Value $Value -Force | Out-Null

# Show the final state (verification)
Get-ItemProperty -Path $RegPath -Name $Name | Select-Object $Name
