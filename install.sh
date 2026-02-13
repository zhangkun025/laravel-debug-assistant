#!/bin/bash

# Laravel Debug Assistant - 统一安装入口脚本
# 此脚本会调用 scripts/install/install.sh

set -e

# 颜色定义
GREEN='\033[0;32m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m'

# 显示欢迎信息
echo -e "\n${CYAN}╔══════════════════════════════════════════════════════════╗${NC}"
echo -e "${CYAN}║${NC}  Laravel Debug Assistant - 安装向导                   ${CYAN}║${NC}"
echo -e "${CYAN}╚══════════════════════════════════════════════════════════╝${NC}\n"

# 检查是否在 Laravel 项目目录
if [ -f "artisan" ]; then
    echo -e "${GREEN}✓${NC} 检测到 Laravel 项目"
    LARAVEL_DIR=$(pwd)
else
    echo -e "${GREEN}✓${NC} 请输入您的 Laravel 项目路径（绝对路径）"
    read -p "路径: " LARAVEL_DIR

    if [ ! -d "$LARAVEL_DIR" ]; then
        echo -e "${RED}✗${NC} 指定的目录不存在"
        exit 1
    fi

    if [ ! -f "$LARAVEL_DIR/artisan" ]; then
        echo -e "${RED}✗${NC} 指定的目录不是 Laravel 项目"
        exit 1
    fi
fi

# 获取脚本所在目录
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# 检查安装脚本是否存在
if [ ! -f "$SCRIPT_DIR/scripts/install/install.sh" ]; then
    echo -e "${RED}✗${NC} 安装脚本不存在: $SCRIPT_DIR/scripts/install/install.sh"
    exit 1
fi

# 设置环境变量
export LARAVEL_DIR="$LARAVEL_DIR"
export SCRIPT_DIR="$SCRIPT_DIR"

# 调用安装脚本
echo -e "${BLUE}ℹ${NC} 启动安装程序...\n"
cd "$SCRIPT_DIR"
bash scripts/install/install.sh
