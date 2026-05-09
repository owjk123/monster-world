#!/bin/bash
# GitHub Pages 快速部署脚本

echo "======================================"
echo "  🚀 怪物世界 - GitHub Pages部署"
echo "======================================"
echo ""

# 检查git
if ! command -v git &> /dev/null; then
    echo "❌ 请先安装git"
    exit 1
fi

echo "请输入你的GitHub用户名:"
read USERNAME

echo "请输入仓库名(默认 monster-world):"
read REPO
if [ -z "" ]; then REPO="monster-world"; fi

echo ""
echo "按以下步骤操作:"
echo ""
echo "1. 先在GitHub创建仓库: https://github.com/new"
echo "   仓库名: "
echo "   选择 Public"
echo ""
echo "2. 然后执行以下命令:"
echo ""

cat << GIT_CMDS
cd GitHubPages版本
git init
git add .
git commit -m "初始提交 - 怪物世界H5游戏"
git branch -M main
git remote add origin https://github.com//.git
git push -u origin main
GIT_CMDS

echo ""
echo "3. 最后在GitHub仓库设置中启用Pages:"
echo "   Settings → Pages → Source → main → Save"
echo ""
echo "4. 访问地址: https://.github.io//"
echo ""
echo "当前后端API地址: http://115.190.127.223:3001"
echo "(记得在安全组开放3001端口，或用ngrok)"
