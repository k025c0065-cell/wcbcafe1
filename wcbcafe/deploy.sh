#!/bin/bash

# WCB CAFE - GitHub Pagesデプロイスクリプト

echo "======================================"
echo "WCB CAFE - GitHub Pages デプロイ"
echo "======================================"
echo ""

# ユーザー名を入力
read -p "GitHubユーザー名を入力してください: " USERNAME

if [ -z "$USERNAME" ]; then
    echo "エラー: ユーザー名が入力されていません"
    exit 1
fi

echo ""
echo "リポジトリURL: https://github.com/$USERNAME/wcbcafe"
echo ""

# Gitリポジトリの初期化（まだの場合）
if [ ! -d ".git" ]; then
    echo "Gitリポジトリを初期化しています..."
    git init
    git add .
    git commit -m "Initial commit: WCB CAFE website"
    git branch -M main
    git remote add origin "https://github.com/$USERNAME/wcbcafe.git"
fi

echo ""
echo "Gitにプッシュしています..."
git push -u origin main

echo ""
echo "======================================"
echo "デプロイ完了！"
echo "======================================"
echo ""
echo "以下のURLでサイトを確認してください（数分かかる場合があります）:"
echo "https://$USERNAME.github.io/wcbcafe/"
echo ""
echo "GitHub Pagesの設定:"
echo "1. https://github.com/$USERNAME/wcbcafe/settings/pages にアクセス"
echo "2. Source を 'main' ブランチに設定"
echo "3. Save をクリック"
echo ""
