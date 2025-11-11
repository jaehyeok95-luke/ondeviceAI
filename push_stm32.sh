#!/bin/bash
# =========================================
# STM32CubeIDE + FreeRTOS 자동 Git Push 스크립트
# =========================================
# by ChatGPT (2025)

set -e

# 🧭 프로젝트 경로 감지
PROJECT_DIR=$(pwd)
PROJECT_NAME=$(basename "$PROJECT_DIR")

echo "🚀 STM32 Project Auto Push Script"
echo "📁 Project: $PROJECT_NAME"
echo "📂 Path   : $PROJECT_DIR"
echo "----------------------------------------"

# ✅ Git 초기화 (필요시)
if [ ! -d .git ]; then
    echo "🪄 Initializing new git repository..."
    git init
fi

# ✅ .gitignore 자동 생성 (없을 경우)
if [ ! -f .gitignore ]; then
    echo "📝 Creating .gitignore..."
    cat <<EOF > .gitignore
# STM32CubeIDE / FreeRTOS
Debug/
Release/
build/
*.o
*.d
*.elf
*.bin
*.hex
*.map
*.lst
*.srec
.metadata/
.settings/
*.launch
*.log
*.swo
*.svd
*.swp
*.bak
*.tmp
.DS_Store
Thumbs.db
EOF
fi

# ✅ Git add / commit / push
echo "📡 Checking for changes..."
git add -A

# 변경 사항이 없으면 종료
if git diff --cached --quiet; then
    echo "✅ No changes to commit."
    exit 0
fi

# Commit 메시지 입력받기
read -p "💬 Commit message: " msg
if [ -z "$msg" ]; then
    msg="Update project files"
fi

echo "🧩 Committing..."
git commit -m "$msg"

# ✅ 원격 저장소가 없으면 연결 요청
if ! git remote | grep -q origin; then
    echo "🔗 No remote repository found."
    read -p "🌐 Enter GitHub repo URL (e.g., https://github.com/<user>/<repo>.git): " url
    git remote add origin "$url"
    git branch -M main
fi

echo "☁️ Pushing to GitHub..."
git push -u origin main

echo "----------------------------------------"
echo "✅ Push complete!"
echo "🎉 Your STM32 project is now on GitHub!"

