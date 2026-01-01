 <#
.SYNOPSIS
    This PowerShell script ensures that the maximum size of the Windows Application event log is at least 32768 KB (32 MB).

.NOTES
    Author          : Sean Mohr
    LinkedIn        : https://www.linkedin.com/in/sean-mohr-22a08b1b0/
    GitHub          : https://github.com/Sean-jii
    Date Created    : 2025-12-31
    Last Modified   : 2025-12-31
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000197

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\WN10-CC-000197.ps1
#>

$Path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent"

# Create the key if it does not exist
if (-not (Test-Path $Path)) {
    New-Item -Path $Path -Force | Out-Null
}

# Disable Microsoft Consumer Experiences
New-ItemProperty `
    -Path $Path `
    -Name "DisableConsumerFeatures" `
    -PropertyType DWord `
    -Value 1 `
    -Force
