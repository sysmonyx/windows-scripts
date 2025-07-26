################################################################################################################################
#    /$$$$$$
#   /$$__  $$
#  | $$  \__/ /$$   /$$  /$$$$$$$ /$$$$$$/$$$$   /$$$$$$  /$$$$$$$  /$$   /$$ /$$   /$$         # Author:   Soham Ray [Sysmonyx]
#  |  $$$$$$ | $$  | $$ /$$_____/| $$_  $$_  $$ /$$__  $$| $$__  $$| $$  | $$|  $$ /$$/
#   \____  $$| $$  | $$|  $$$$$$ | $$ \ $$ \ $$| $$  \ $$| $$  \ $$| $$  | $$ \  $$$$/          # Website:  https://sysmonyx.com
#   /$$  \ $$| $$  | $$ \____  $$| $$ | $$ | $$| $$  | $$| $$  | $$| $$  | $$  >$$  $$
#  |  $$$$$$/|  $$$$$$$ /$$$$$$$/| $$ | $$ | $$|  $$$$$$/| $$  | $$|  $$$$$$$ /$$/\  $$         # Email:    contact@sysmonyx.com
#   \______/  \____  $$|_______/ |__/ |__/ |__/ \______/ |__/  |__/ \____  $$|__/  \__/
#             /$$  | $$                                             /$$  | $$
#            |  $$$$$$/                                            |  $$$$$$/
#             \______/                                              \______/
################################################################################################################################
#   Description:    This script installs specified apps using the Chocolatey Package Manager for Windows.
#
#   Last Updated:   30.04.2023
################################################################################################################################
# Elevate script to have Administrative privileges.
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
    { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }

# Perform an initial update.
Write-Output "`n--> Performing initial update . . . .`n"
choco upgrade all
Write-Output "`n--> Update complete.`n"

# Apps.
$apps = @(

    # Sorted A-Z.
    "green-tunnel-gui"                                          # Green Tunnel
    "hugo"                                                      # HUGO
    "msiafterburner"                                            # MSI Afterburner
    "processhacker"                                             # Process Hacker 2
    "tcno-acc-switcher"                                         # TcNo Account Switcher


)

# Install apps.
foreach ($app in $apps){
    Write-Output "`n--> Now installing : $app . . . .`n"
    choco install $app -yr
    Write-Output "`n--> Finished installing $app.`n"
}

# Perform closing update.
Write-Output "`n--> Performing closing update . . . .`n"
choco upgrade all
Write-Output "`n--> Update complete.`n"

# Wait for Key-Press from user.
Write-Output "`n--> Complete. Press any key to continue . . . .`n"
[Console]::ReadKey($true) | Out-Null
################################################################################################################################
