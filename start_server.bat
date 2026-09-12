@echo off
chcp 65001 >nul
title 單元5 英文互動練習 - 本地測試伺服器
cd /d "%~dp0"

echo ===============================================
echo   English P4 Unit 5 - 本地測試伺服器
echo ===============================================
echo   1. 伺服器將在新視窗啟動
echo   2. 瀏覽器會自動開啟頁面
echo   3. 關閉「Unit5 伺服器」視窗即可停止
echo   若 8000 埠被佔用，請編輯本檔改用其他埠號
echo ===============================================
echo.

start "Unit5 伺服器" cmd /k "python -m http.server 8000"
ping -n 3 127.0.0.1 >nul
start "" http://localhost:8000/index.html
exit
