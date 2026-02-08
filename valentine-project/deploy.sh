#!/bin/bash

# Valentine's Day Page - Easy Deploy Script
# This script will help you deploy your page to GitHub Pages

echo "🌹 Valentine's Day Page Deployer 🌹"
echo ""

# Get user input
read -p "Enter your GitHub username: " username
read -p "Enter your repository name: " reponame

echo ""
echo "Updating configuration files..."

# Update package.json
sed -i "s|https://saurabhnemade.github.io/will-you-be-my-valentine|https://$username.github.io/$reponame|g" package.json

# Update vite.config.ts
sed -i "s|/will-you-be-my-valentine|/$reponame|g" vite.config.ts

echo "✅ Configuration updated!"
echo ""
echo "Initializing git repository..."

# Initialize git if not already done
if [ ! -d .git ]; then
    git init
    git add .
    git commit -m "Initial commit - Valentine surprise!"
fi

echo ""
echo "Connecting to GitHub..."
git remote add origin "https://github.com/$username/$reponame.git" 2>/dev/null || git remote set-url origin "https://github.com/$username/$reponame.git"

echo ""
echo "Pushing to GitHub..."
git branch -M main
git push -u origin main

echo ""
echo "Installing dependencies..."
pnpm install

echo ""
echo "Building and deploying to GitHub Pages..."
pnpm run deploy

echo ""
echo "🎉 Deployment complete! 🎉"
echo ""
echo "Your page will be live at:"
echo "https://$username.github.io/$reponame"
echo ""
echo "Note: It may take 1-2 minutes for GitHub Pages to publish your site."
echo "💝 Good luck with your Valentine's surprise! 💝"
