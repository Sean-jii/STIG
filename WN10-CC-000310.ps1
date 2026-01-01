 <#
.NOTES
    Author          : Sean Mohr
    LinkedIn        : https://www.linkedin.com/in/sean-mohr-22a08b1b0/
    GitHub          : https://github.com/Sean-jii
    Date Created    : 2025-12-31
    Last Modified   : 2025-12-31
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000310

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\WN10-CC-000310.ps1
#>

# Disable Windows Game DVR (Policy-based, Tenable compliant)

$Path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\GameDVR"

If (!(Test-Path $Path)) {
    New-Item -Path $Path -Force | Out-Null
}

New-ItemProperty -Path $Path -Name "AllowGameDVR" -PropertyType DWord -Value 0 -Force
 
