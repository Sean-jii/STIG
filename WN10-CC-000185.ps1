 
.NOTES
    Author          : Sean Mohr
    LinkedIn        : https://www.linkedin.com/in/sean-mohr-22a08b1b0/
    GitHub          : https://github.com/Sean-jii
    Date Created    : 2025-12-31
    Last Modified   : 2025-12-31
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000185

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\WN10-CC-000185.ps1


#># STIG ID: WN10-CC-000185
# Disable Autorun on all drives

$Path = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer"

If (-not (Test-Path $Path)) {
    New-Item -Path $Path -Force | Out-Null
}

Set-ItemProperty -Path $Path -Name "NoAutorun" -Type DWord -Value 1
Set-ItemProperty -Path $Path -Name "NoViewContextMenu" -Type DWord -Value 1
 
