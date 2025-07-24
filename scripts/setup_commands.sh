#!/bin/bash

# RAGASSERVICE GitHub 倉庫設置腳本
# 使用方法: chmod +x setup_commands.sh && ./setup_commands.sh

echo "🚀 開始設置 RAGASSERVICE GitHub 倉庫..."

# 檢查是否在正確的目錄
if [ ! -f "README.md" ]; then
    echo "❌ 錯誤: 請在 RAGASSERVICE 項目根目錄執行此腳本"
    exit 1
fi

# 1. 初始化 git 倉庫（如果還沒有）
if [ ! -d ".git" ]; then
    echo "📁 初始化 Git 倉庫..."
    git init
    git remote add origin https://github.com/stevechen1112/RAGASSERVICE.git
fi

# 2. 創建 develop 分支
echo "🌿 創建並切換到 develop 分支..."
git checkout -b develop 2>/dev/null || git checkout develop

# 3. 添加所有文件
echo "📝 添加所有項目文件..."
git add .

# 4. 提交更改
echo "💾 提交初始項目結構..."
git commit -m "feat: Initial project setup with complete structure

- Add comprehensive README.md with project overview
- Set up development environment (Docker, requirements.txt, pyproject.toml)
- Configure CI/CD pipeline with GitHub Actions
- Add issue templates for bug reports and feature requests
- Include development plan and progress tracker documentation
- Set up proper .gitignore for Python RAG project
- Add MIT license

This commit establishes the foundation for the 5-phase RAG system development
targeting RAGIE-level performance with Chinese optimization and LINE/WhatsApp integration."

# 5. 推送到 GitHub
echo "🚀 推送到 GitHub..."
git push -u origin develop

# 6. 切換到 main 分支並推送
echo "🔄 設置 main 分支..."
git checkout -b main 2>/dev/null || git checkout main
git merge develop
git push -u origin main

# 7. 回到 develop 分支
git checkout develop

echo "✅ GitHub 倉庫設置完成！"
echo ""
echo "📋 下一步建議："
echo "1. 前往 https://github.com/stevechen1112/RAGASSERVICE"
echo "2. 設置分支保護規則 (Settings > Branches)"
echo "3. 創建 Project Board (Projects > New project)"
echo "4. 設置 Milestones (Issues > Milestones)"
echo "5. 開始創建第一季度的 Issues"
echo ""
echo "🎯 準備開始第一階段開發工作！" 