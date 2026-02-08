# 🌹 Valentine's Day Page - GitHub Pages Deployment Guide

## Quick Setup (3 Steps!)

### Step 1: Create GitHub Repository

1. Go to [GitHub.com](https://github.com) and log in
2. Click the **"+"** button (top right) → **"New repository"**
3. Name it something like: `valentine-surprise` or `will-you-be-my-valentine`
4. Make it **Public** (required for free GitHub Pages)
5. **DO NOT** initialize with README, .gitignore, or license
6. Click **"Create repository"**

### Step 2: Update Configuration Files

You need to update 2 files with YOUR GitHub username and repo name:

#### File 1: `package.json`
Find this line (around line 3):
```json
"homepage": "https://saurabhnemade.github.io/will-you-be-my-valentine",
```

Change it to:
```json
"homepage": "https://YOUR-GITHUB-USERNAME.github.io/YOUR-REPO-NAME",
```

#### File 2: `vite.config.ts`
Find this line (around line 6):
```typescript
base: "/will-you-be-my-valentine",
```

Change it to:
```typescript
base: "/YOUR-REPO-NAME",
```

**Example:** If your username is `john123` and repo is `valentine-surprise`:
- `"homepage": "https://john123.github.io/valentine-surprise",`
- `base: "/valentine-surprise",`

### Step 3: Deploy to GitHub

Open your terminal/command prompt in the project folder and run:

```bash
# Initialize git repository
git init
git add .
git commit -m "Initial commit - Valentine surprise!"

# Connect to your GitHub repo (replace with YOUR details!)
git remote add origin https://github.com/YOUR-USERNAME/YOUR-REPO-NAME.git

# Push to GitHub
git branch -M main
git push -u origin main

# Install dependencies (choose one)
npm install -g pnpm  # If you don't have pnpm
pnpm install         # Install project dependencies

# Build and deploy to GitHub Pages!
pnpm run deploy
```

## Your Live URL

After deployment completes (takes 1-2 minutes), your page will be live at:
```
https://YOUR-USERNAME.github.io/YOUR-REPO-NAME
```

Share this link with your special someone! 💝

## Troubleshooting

### GitHub Pages not showing?
1. Go to your repo → **Settings** → **Pages**
2. Under "Source", make sure it's set to deploy from `gh-pages` branch
3. Wait 1-2 minutes for GitHub to build the page

### Getting deployment errors?
- Make sure you updated both `package.json` and `vite.config.ts` correctly
- Ensure your repo is **Public**
- Check that you have `gh-pages` package installed (it's in package.json)

### Want to make changes?
After making edits to the code:
```bash
git add .
git commit -m "Updated messages"
git push
pnpm run deploy
```

## Customization Ideas

Want to personalize it more? Edit `src/App.tsx`:

- **Change the messages**: Edit the `phrases` array (lines 14-30)
- **Change images**: Replace the GIF URLs (lines 36 and 42)
- **Change the question**: Edit line 43 where it says "Will you be my Valentine?"
- **Success message**: Edit line 38 for what shows when they say yes!

---

Made with ❤️ for someone special!
