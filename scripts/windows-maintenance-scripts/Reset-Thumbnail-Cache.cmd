::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::   /$$$$$$                                                                                                                    
::  /$$__  $$                                                                                                                   
:: | $$  \__/ /$$   /$$  /$$$$$$$ /$$$$$$/$$$$   /$$$$$$  /$$$$$$$  /$$   /$$ /$$   /$$         # Author:   Soham Ray [Sysmonyx]
:: |  $$$$$$ | $$  | $$ /$$_____/| $$_  $$_  $$ /$$__  $$| $$__  $$| $$  | $$|  $$ /$$/                                         
::  \____  $$| $$  | $$|  $$$$$$ | $$ \ $$ \ $$| $$  \ $$| $$  \ $$| $$  | $$ \  $$$$/          # Website:  https://sysmonyx.com
::  /$$  \ $$| $$  | $$ \____  $$| $$ | $$ | $$| $$  | $$| $$  | $$| $$  | $$  >$$  $$                                          
:: |  $$$$$$/|  $$$$$$$ /$$$$$$$/| $$ | $$ | $$|  $$$$$$/| $$  | $$|  $$$$$$$ /$$/\  $$         # Email:    contact@sysmonyx.com
::  \______/  \____  $$|_______/ |__/ |__/ |__/ \______/ |__/  |__/ \____  $$|__/  \__/                                         
::            /$$  | $$                                             /$$  | $$                                                   
::           |  $$$$$$/                                            |  $$$$$$/                                                   
::            \______/                                              \______/                                                    
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::  Description:    This script resets the Windows Thumbnail Cache.
::
::  Last Updated:   30.04.2023
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off
color 0E
title Reset Thumbnail Cache

:: Stop Windows Explorer.
TASKKILL /IM explorer.exe /F
TIMEOUT /T 2 /NOBREAK >nul

:: Clear the Thumbnail Cache.
DEL /F /S /Q /A "%LOCALAPPDATA%\Microsoft\Windows\Explorer\thumbcache_*"

:: Restart Windows Explorer.
TIMEOUT /T 2 /NOBREAK >nul
START explorer.exe

:: Restart Computer.
echo.
echo.
echo Complete.
echo.
echo.
echo Your PC will now Restart.
echo.
echo.
pause
cls
shutdown /r /f /t 0
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::