 
 <#
.NOTES
    Author          : Sean Mohr
    LinkedIn        : https://www.linkedin.com/in/sean-mohr-22a08b1b0/
    GitHub          : https://github.com/Sean-jii
    Date Created    : 2025-12-30
    Last Modified   : 2025-12-30
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-SO-000250

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\WN10-SO-000250.ps1
#>

# STIG ID: WN10-SO-000250
# Require UAC admin consent on the secure desktop

$RegPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"

# Ensure registry path exists
if (-not (Test-Path $RegPath)) {
    New-Item -Path $RegPath -Force | Out-Null
}

# Prompt administrators for consent
New-ItemProperty `
    -Path $RegPath `
    -Name "ConsentPromptBehaviorAdmin" `
    -PropertyType DWord `
    -Value 2 `
    -Force | Out-Null

# Enable secure desktop for elevation prompts
New-ItemProperty `
    -Path $RegPath `
    -Name "PromptOnSecureDesktop" `
    -PropertyType DWord `
    -Value 1 `
    -Force | Out-Null

Write-Output "STIG WN10-SO-000250 remediated: Admins prompted for consent on secure desktop." 
