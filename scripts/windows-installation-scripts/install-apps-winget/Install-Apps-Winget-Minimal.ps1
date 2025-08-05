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
#   Description:    This script installs specified apps using the Windows Package Manager for Windows.
#                   Minimal version for only essential applications.
#
#   Last Updated:   10.07.2025
################################################################################################################################
# Perform an initial update.
Write-Output "`n--> Performing initial update . . . .`n"
winget upgrade -h --all --include-unknown
Write-Output "`n--> Finished initial update.`n"

################################################################################################################################
# Apps.
$apps = @(



)
################################################################################################################################
# Install apps.
foreach ($app in $apps){
    Write-Output "`n--> Now installing : $app . . . .`n"
    winget install -eh --id $app
    Write-Output "`n--> Finished installing $app.`n"
}

# Perform closing update.
Write-Output "`n--> Performing closing update . . . .`n"
winget upgrade -h --all --include-unknown
Write-Output "`n--> Finished closing update.`n"

# Wait for Key-Press from user.
Write-Output "`n--> Complete. Press any key to continue . . . .`n"
[Console]::ReadKey($true) | Out-Null
################################################################################################################################
