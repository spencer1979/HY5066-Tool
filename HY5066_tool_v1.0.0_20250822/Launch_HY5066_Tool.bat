@echo off
title HY5066 Bluetooth Module Control Tool - 藍牙模組控制工具
echo 🚀 Starting HY5066 Control Tool / 正在啟動 HY5066 控制工具...
echo.

REM Check if executable exists
if not exist "HY5066_tool.exe" (
    echo ❌ HY5066_tool.exe not found! / 找不到執行檔！
    echo Please ensure the executable is in the same directory
    echo 請確保執行檔在同一目錄中
    pause
    exit /b 1
)

REM Launch the application
echo 📱 Launching HY5066 Tool... / 正在啟動控制工具...
start "" "HY5066_tool.exe"

echo ✅ Application started successfully! / 應用程式啟動成功！
echo You can close this window / 您可以關閉此視窗
timeout /t 3 >nul
