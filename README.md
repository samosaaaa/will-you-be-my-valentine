# Public Folder

This folder contains static assets that will be served directly.

## Files:

- **favicon.svg** - The heart icon that appears in the browser tab
- You can add more static files here like:
  - Images (put images here instead of src if they won't be processed)
  - Custom fonts
  - manifest.json (for PWA)
  - robots.txt

## How it works:

Files in the `public` folder are:
- Served at the root path
- NOT processed by Vite
- Copied as-is to the dist folder during build

Example:
- `public/favicon.svg` → accessible at `/favicon.svg`
- `public/images/photo.jpg` → accessible at `/images/photo.jpg`
