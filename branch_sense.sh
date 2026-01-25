#!/bin/bash
set -e

PROJECT_DIR=$(pwd)
PROJECT_NAME=$(basename "$PROJECT_DIR")
CURRENT_BRANCH=$(git branch --show-current)

echo "🚀 STM32 Auto Git Push"
echo "📁 Project: $PROJECT_NAME"
echo "🌿 Branch : $CURRENT_BRANCH"
echo "----------------------------------------"

if [ ! -d .git ]; then
    git init
fi

if [ ! -f .gitignore ]; then
cat <<EOF > .gitignore
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
*.swp
EOF
fi

git add -A

if git diff --cached --quiet; then
    echo "⚠ No changes to commit."
else
    read -p "💬 Commit message: " msg
    msg=${msg:-"Update project files"}
    git commit -m "$msg"
fi

if ! git remote | grep -q origin; then
    read -p "🌐 Enter GitHub repo URL: " url
    git remote add origin "$url"
fi

echo "⬆️  Pushing to origin/$CURRENT_BRANCH..."
if git push -u origin "$CURRENT_BRANCH"; then
    echo "🎉 Push success!"
else
    echo "❌ Push failed!"
    exit 1
fi

echo "----------------------------------------"
echo "✔ All done!"

