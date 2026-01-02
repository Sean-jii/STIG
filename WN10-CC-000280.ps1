  <#
.NOTES
    Author          : Sean Mohr
    LinkedIn        : https://www.linkedin.com/in/sean-mohr-22a08b1b0/
    GitHub          : https://github.com/Sean-jii
    Date Created    : 2026-1-2
    Last Modified   : 2026-1-2
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000280

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\WN10-CC-000280.ps1
#>

# WN10-CC-000280
# Always prompt for password upon Remote Desktop connection

$RegPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services"
$RegName = "fPromptForPassword"
$RegValue = 1

# Create registry path if it does not exist
if (-not (Test-Path $RegPath)) {
    New-Item -Path $RegPath -Force | Out-Null
}

# Create or update the required registry value
New-ItemProperty `
    -Path $RegPath `
    -Name $RegName `
    -PropertyType DWord `
    -Value $RegValue `
    -Force | Out-Null

# Verification output (optional)
Get-ItemProperty -Path $RegPath -Name $RegName
 
