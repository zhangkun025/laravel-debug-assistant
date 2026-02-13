@echo off
REM Laravel Debug Assistant - 统一安装入口脚本 (Windows)
REM 此脚本会调用 scripts\install\install.bat

setlocal enabledelayedexpansion

REM 设置颜色
for /F %%a in ('echo prompt $E ^| cmd') do set "ESC=%%a"
set "GREEN=%ESC%[32m"
set "BLUE=%ESC%[34m"
set "CYAN=%ESC%[36m"
set "NC=%ESC%[0m"

echo.
echo %CYAN%══════════════════════════════════════════════════════════%NC%
echo %CYAN%║ Laravel Debug Assistant - 安装向导                   %NC%
echo %CYAN%║%NC%
echo %CYAN%║ 版本：1.1.0%NC%
echo %CYAN%║ 更新日期：2025-01-12%NC%
echo %CYAN%══════════════════════════════════════════════════════════%NC%
echo.

REM 检查是否在 Laravel 项目目录
if exist "artisan" (
    echo %GREEN%✓%NC% 检测到 Laravel 项目
    set LARAVEL_DIR=%CD%
) else (
    echo %GREEN%✓%NC% 请输入您的 Laravel 项目路径（绝对路径）
    set /p LARAVEL_DIR=路径:

    if not exist "%LARAVEL_DIR%\artisan" (
        echo %RED%✗%NC% 指定的目录不是 Laravel 项目
        pause
        exit /b 1
    )
)

REM 获取脚本所在目录
set SCRIPT_DIR=%~dp0

REM 检查安装脚本是否存在
if not exist "%SCRIPT_DIR%scripts\install\install.bat" (
    echo %RED%✗%NC% 安装脚本不存在: %SCRIPT_DIR%scripts\install\install.bat
    pause
    exit /b 1
)

REM 设置环境变量
set INSTALL_LARAVEL_DIR=%LARAVEL_DIR%
set INSTALL_SCRIPT_DIR=%SCRIPT_DIR%

REM 调用安装脚本
echo %BLUE%ℹ%NC% 启动安装程序...
echo.
cd /d "%SCRIPT_DIR%"
call scripts\install\install.bat
