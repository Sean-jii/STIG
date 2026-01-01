 
 <#
.NOTES
    Author          : Sean Mohr
    LinkedIn        : https://www.linkedin.com/in/sean-mohr-22a08b1b0/
    GitHub          : https://github.com/Sean-jii
    Date Created    : 2025-12-29
    Last Modified   : 2025-12-29
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000370

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\WN10-CC-000370.ps1
#>


# STIG ID: WN10-CC-000370
# Disable Windows Hello / Convenience PIN

$RegPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System"
$ValueName = "AllowDomainPINLogon"
$ValueData = 0  # Disable convenience PIN

# Ensure the registry path exists
if (-not (Test-Path $RegPath)) {
    New-Item -Path $RegPath -Force | Out-Null
}

# Apply the STIG setting
New-ItemProperty `
    -Path $RegPath `
    -Name $ValueName `
    -PropertyType DWord `
    -Value $ValueData `
    -Force | Out-Null

Write-Output "STIG WN10-CC-000370 remediated: Convenience PIN disabled."
 
