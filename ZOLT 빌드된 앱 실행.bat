@echo off
chcp 65001 >nul
title ZOLT AI Enterprise
cd /d "%~dp0"
if exist "dist-electron\win-unpacked\ZOLT AI Enterprise.exe" (
    start "" "dist-electron\win-unpacked\ZOLT AI Enterprise.exe"
) else if exist "dist-electron\ZOLT AI Enterprise.exe" (
    start "" "dist-electron\ZOLT AI Enterprise.exe"
) else (
    echo 빌드된 앱이 없습니다. 먼저 "npm run electron:build:win" 또는 "npm run pack" 으로 빌드하세요.
    pause
)
