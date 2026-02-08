# 💝 START HERE - Valentine's Day Surprise Setup

## What You Have:
A cute interactive Valentine's Day webpage where:
- The "Yes" button gets bigger each time they click "No"
- The "No" button changes to funny messages
- When they finally click "Yes", they get a sweet celebration!

## Quick Start (2 Options):

### 🚀 OPTION 1: Automated Deploy (Recommended)
1. Open terminal in this folder
2. Run: `./deploy.sh` (Mac/Linux) or `bash deploy.sh` (Windows Git Bash)
3. Enter your GitHub username and repo name when prompted
4. Wait for deployment to complete
5. Share the URL with your special someone! 💕

### 📝 OPTION 2: Manual Deploy
1. Read `DEPLOYMENT_GUIDE.md` - full step-by-step instructions
2. Use `CONFIG_TEMPLATE.md` - quick reference for what to change
3. Update `package.json` and `vite.config.ts` with your GitHub details
4. Follow the commands in the deployment guide

## Before You Start:
1. ✅ Create a GitHub repository (instructions in DEPLOYMENT_GUIDE.md)
2. ✅ Have Node.js installed on your computer
3. ✅ Install pnpm: `npm install -g pnpm`

## Your Page Preview:
The page asks "Will you be my Valentine?" with:
- A cute bear with flowers GIF
- A "Yes" button (gets bigger when "No" is clicked)
- A "No" button with funny changing messages like:
  - "Are you sure?"
  - "What if I asked really nicely?"
  - "PLEASE POOKIE"
  - And more!

## Personalization Tips:
Want to customize the messages? Edit `src/App.tsx`:
- Line 14-30: The funny "No" button phrases
- Line 38: Success message when they say "Yes"
- Line 43: The main question
- Lines 36, 42: GIF image URLs

## Files Overview:
- `DEPLOYMENT_GUIDE.md` - Complete deployment instructions
- `CONFIG_TEMPLATE.md` - Quick config reference
- `deploy.sh` - Automated deployment script
- `src/App.tsx` - Main Valentine's page component
- `public/favicon.svg` - Heart icon for browser tab
- `package.json` - Project dependencies and config
- `vite.config.ts` - Vite bundler configuration

## Need Help?
Check the troubleshooting section in `DEPLOYMENT_GUIDE.md`

---

Good luck! Your significant other is going to love this! 🌹
