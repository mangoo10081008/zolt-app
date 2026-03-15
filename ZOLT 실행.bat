@echo off
chcp 65001 >nul
title ZOLT AI Enterprise
echo ZOLT AI Enterprise 실행 중...
cd /d "%~dp0"
npm run electron:dev
pause
