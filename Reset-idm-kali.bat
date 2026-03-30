@echo off
title IDM Trial Reset Kali
color 0A

echo.
echo ============================================
echo    Starting IDM Trial Reset Process
echo    Author: Kali-Prem
echo ============================================
echo.
echo Stopping IDM processes...
taskkill /f /im IDMan.exe >nul 2>&1
taskkill /f /im IDMGrHlp.exe >nul 2>&1
net stop "IDMan" >nul 2>&1

echo Clearing registry...
reg delete "HKEY_CURRENT_USER\Software\DownloadManager" /f >nul 2>&1
reg delete "HKEY_LOCAL_MACHINE\Software\DownloadManager" /f >nul 2>&1
reg delete "HKEY_CURRENT_USER\Software\Internet Download Manager" /f >nul 2>&1
reg delete "HKEY_LOCAL_MACHINE\Software\Internet Download Manager" /f >nul 2>&1

echo Deleting trial files...
del /f /q "%APPDATA%\IDM\*.dat" >nul 2>&1
del /f /q "%APPDATA%\IDM\DLM*.ini" >nul 2>&1
del /f /q "%LOCALAPPDATA%\IDM\*.dat" >nul 2>&1
del /f /q "%PROGRAMDATA%\IDM\*.dat" >nul 2>&1

echo Adding hosts block...
echo 127.0.0.1 tonec.com>> %WINDIR%\System32\drivers\etc\hosts
echo 127.0.0.1 www.tonec.com>> %WINDIR%\System32\drivers\etc\hosts

@echo off
title IDM Toolkit - Operation Complete
color 0A

echo.
echo ============================================
echo        IDM TOOLKIT - OPERATION SUCCESS
echo ============================================
echo.

echo [INFO] Process completed successfully.
echo [INFO] All required operations have been executed.
echo.

echo [NEXT STEP]
echo Please restart your computer to apply changes.
echo.

echo [NOTICE]
echo After restart, launch IDM normally.
echo.

echo --------------------------------------------
echo Star the project:
echo https://github.com/Kali-Prem/IDM-Activation-Tool
echo --------------------------------------------
echo.

echo Thank you for using IDM Toolkit!

pause