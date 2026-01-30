#!/bin/bash

# GitHub 初始化脚本 - 将项目上传到 GitHub

echo ""
echo "===================================="
echo "NGAI 智能客服自动化测试平台"
echo "GitHub 初始化脚本"
echo "===================================="
echo ""

# 检查 Git 是否已安装
if ! command -v git &> /dev/null; then
    echo "错误：未检测到 Git 安装"
    echo "请先安装 Git: https://git-scm.com/download/linux"
    exit 1
fi

# 获取仓库信息
read -p "请输入你的 GitHub 用户名: " GITHUB_USERNAME
read -p "请输入仓库名称（默认：ngai-auto-test-platform）: " REPO_NAME

REPO_NAME=${REPO_NAME:-ngai-auto-test-platform}

echo ""
echo "正在初始化 Git 仓库..."
echo ""

# 初始化 Git
if [ -d .git ]; then
    echo "Git 仓库已存在，跳过初始化"
else
    git init
    echo "✓ Git 仓库初始化完成"
fi

# 添加远程仓库
echo ""
echo "正在配置远程仓库..."
git remote remove origin 2>/dev/null
git remote add origin https://github.com/$GITHUB_USERNAME/$REPO_NAME.git
echo "✓ 远程仓库配置完成"

# 添加文件
echo ""
echo "正在添加文件到暂存区..."
git add .
echo "✓ 文件添加完成"

# 创建初始提交
echo ""
echo "正在创建初始提交..."
git commit -m "Initial commit: NGAI 智能客服自动化测试平台" || echo "提示：可能已经有初始提交，继续进行..."
echo "✓ 提交完成"

# 设置主分支
echo ""
echo "正在设置主分支..."
git branch -M main
echo "✓ 主分支设置完成"

# 显示最终步骤
echo ""
echo "===================================="
echo "初始化完成！接下来请执行："
echo "===================================="
echo ""
echo "1. 在 GitHub 上创建新仓库："
echo "   https://github.com/new"
echo "   仓库名称：$REPO_NAME"
echo "   选择 Public 公开仓库"
echo ""
echo "2. 推送代码到 GitHub："
echo "   git push -u origin main"
echo ""
echo "3. 配置 GitHub Pages："
echo "   进入仓库 Settings → Pages"
echo "   Source: Deploy from a branch"
echo "   Branch: gh-pages, /(root)"
echo ""
echo "===================================="
echo ""
