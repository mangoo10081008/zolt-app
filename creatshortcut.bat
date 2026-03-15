@echo off
set "EXE_NAME=ZOLT AI Enterprise.exe"
set "LNK_NAME=ZOLT AI Enterprise.lnk"

echo Creating shortcut for %EXE_NAME%...

set SCRIPT="%TEMP%\create_luna_shortcut.vbs"
if exist %SCRIPT% del %SCRIPT%

echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = oWS.SpecialFolders("Desktop") ^& "\%LNK_NAME%" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "%~dp0%EXE_NAME%" >> %SCRIPT%
echo oLink.IconLocation = "%~dp0%EXE_NAME%, 0" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%

cscript /nologo %SCRIPT%
if exist %SCRIPT% del %SCRIPT%

echo.
echo ===========================================
echo   SUCCESS: Shortcut created on Desktop!
echo ===========================================
pause