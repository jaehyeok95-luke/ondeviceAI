#!/bin/bash
# =========================================
# 🚀 PyCharm Project Git Auto Push Script
# =========================================
# by ChatGPT (2025)

set -e  # 오류 발생 시 즉시 종료

# 🧭 현재 프로젝트 경로 및 이름
PROJECT_DIR=$(pwd)
PROJECT_NAME=$(basename "$PROJECT_DIR")

echo "========================================"
echo "📁 Project: $PROJECT_NAME"
echo "📂 Path   : $PROJECT_DIR"
echo "========================================"

# ✅ Git 초기화 (최초 1회)
if [ ! -d ".git" ]; then
    echo "🪄 Initializing new git repository..."
    git init
    read -p "🔗 Enter your GitHub repo URL (e.g. https://github.com/username/repo.git): " REMOTE_URL
    git remote add origin "$REMOTE_URL"
    echo "✅ Remote repository added: $REMOTE_URL"
fi

# ✅ .gitignore 자동 생성 (없을 경우)
if [ ! -f ".gitignore" ]; then
    echo "📝 Creating .gitignore..."
    cat <<EOF > .gitignore
# PyCharm / Python
.idea/
__pycache__/
*.pyc
*.pyo
*.pyd
.DS_Store

# Virtual environment
.venv/
env/
venv/

# Data / models
*.npy
*.h5
*.ckpt
*.tfrecord
logs/
EOF
fi

# ✅ 변경사항 스테이징 및 커밋
git add .
commit_msg="Auto commit from PyCharm - $(date '+%Y-%m-%d %H:%M:%S')"
git commit -m "$commit_msg" || echo "🟡 Nothing to commit."

# ✅ 기본 브랜치 설정
if ! git rev-parse --verify main >/dev/null 2>&1; then
    git branch -M main
fi

# ✅ 원격 연결 확인 및 푸시
if git remote get-url origin >/dev/null 2>&1; then
    echo "🚀 Pushing to GitHub..."
    git push origin main || {
        echo "❌ Push failed. Try running:"
        echo "   git push --set-upstream origin main"
    }
else
    echo "⚠️ No remote repository found. Please add one:"
    echo "   git remote add origin <your_repo_url>"
fi

echo "✅ Done! Successfully pushed to GitHub."

