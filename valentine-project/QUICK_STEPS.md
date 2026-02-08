# ⚡ SUPER QUICK DEPLOY STEPS

## 3 Steps to Deploy:

### 1️⃣ CREATE GITHUB REPO
- Go to github.com
- Click "+" → "New repository"  
- Name: `valentine-surprise` (or anything you want)
- Make it Public
- Don't add README/license
- Click "Create repository"

### 2️⃣ UPDATE CONFIG (Pick ONE method):

**Method A: Use the script (easiest)**
```bash
./deploy.sh
# Enter username and repo name when asked
```

**Method B: Edit manually**
- Edit `package.json` line 3:
  ```json
  "homepage": "https://YOUR-USERNAME.github.io/YOUR-REPO-NAME",
  ```
- Edit `vite.config.ts` line 6:
  ```typescript
  base: "/YOUR-REPO-NAME",
  ```

### 3️⃣ DEPLOY
```bash
git init
git add .
git commit -m "Valentine surprise!"
git remote add origin https://github.com/YOUR-USERNAME/YOUR-REPO-NAME.git
git push -u origin main
pnpm install
pnpm run deploy
```

## Your URL:
```
https://YOUR-USERNAME.github.io/YOUR-REPO-NAME
```

## Example:
Username: `john_doe`  
Repo: `valentine2026`  
URL: `https://john_doe.github.io/valentine2026`

---

**That's it! Share the link and watch their reaction! 💕**
