#!/bin/bash
# Script to initialize and push Zendriix Git Workflow repo

REPO_NAME="zendriix-product"
GITHUB_URL="https://github.com/Srisudhar/zendriix-product.git"

#cd $REPO_NAME || exit 1

# Initialize git
git init

# Add remote
git remote add origin $GITHUB_URL

# Create and push main branch
git checkout -b main
git add .
git commit -m "Initial commit with repo structure"
git push -u origin main

# Create and push develop branch
git checkout -b develop
git push -u origin develop

# Feature branches
git checkout -b feature/login-api
git push -u origin feature/login-api

git checkout -b feature/payment-gateway
git push -u origin feature/payment-gateway

# Release branch
git checkout -b release/2025-10-25
git push -u origin release/2025-10-25

# Hotfix branch
git checkout -b hotfix/urgent-bug
git push -u origin hotfix/urgent-bug

echo "All branches pushed successfully!"
