 .NOTES
    Author          : Sean Mohr
    LinkedIn        : https://www.linkedin.com/in/sean-mohr-22a08b1b0/
    GitHub          : https://github.com/Sean-jii
    Date Created    : 2025-12-29
    Last Modified   : 2025-12-29
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AC-000005 

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\WN10-AC-000005.ps1
#>

# WN10-AC-000005
# Enforce password history of 24 passwords

net accounts /uniquepw:24

Write-Output "STIG WN10-AC-000005 applied: Password history set to 24."
 
