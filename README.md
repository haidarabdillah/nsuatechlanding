# Nusatech

Vue 3 + Vite + TailwindCSS project

## Development

```bash
# Install dependencies
npm install

# Run development server
npm run dev

# Build for production
npm run build

# Preview production build
npm run preview
```

## Deployment ke Netlify

### Cara 1: Deploy via Netlify CLI

```bash
# Install Netlify CLI
npm install -g netlify-cli

# Login ke Netlify
netlify login

# Deploy
netlify deploy --prod
```

### Cara 2: Deploy via Git (Recommended)

1. Push code ke GitHub/GitLab/Bitbucket
2. Login ke [Netlify](https://app.netlify.com)
3. Klik "Add new site" → "Import an existing project"
4. Pilih repository Anda
5. Build settings sudah otomatis terdeteksi dari `netlify.toml`:
   - Build command: `npm run build`
   - Publish directory: `dist`
6. Klik "Deploy site"

### Cara 3: Deploy via Drag & Drop

```bash
# Build project
npm run build

# Upload folder 'dist' ke Netlify via drag & drop di https://app.netlify.com/drop
```

## Environment Variables

Jika menggunakan environment variables, tambahkan di Netlify dashboard:
- Site settings → Environment variables
- Atau gunakan file `.env` untuk development lokal

## Features

- ⚡️ Vue 3 + Vite
- 🎨 TailwindCSS 4
- 🛣️ Vue Router dengan SPA routing
- 📱 Responsive design
- 🚀 Optimized untuk production

## Browser Support

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)
