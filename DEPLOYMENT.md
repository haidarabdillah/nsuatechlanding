# Panduan Deploy ke Netlify

## ✅ Persiapan Selesai

Proyek sudah dikonfigurasi dan siap untuk deployment ke Netlify dengan:
- ✅ `netlify.toml` - Konfigurasi build dan redirects
- ✅ `public/_redirects` - Fallback untuk Vue Router SPA
- ✅ `.nvmrc` - Node version specification
- ✅ Vite config dioptimasi untuk production
- ✅ Build test berhasil

## 🚀 Cara Deploy

### Opsi 1: Deploy via Git (RECOMMENDED)

1. **Push ke Git Repository**
   ```bash
   git add .
   git commit -m "Ready for Netlify deployment"
   git push origin main
   ```

2. **Connect ke Netlify**
   - Buka https://app.netlify.com
   - Klik "Add new site" → "Import an existing project"
   - Pilih Git provider (GitHub/GitLab/Bitbucket)
   - Pilih repository Anda
   - Build settings otomatis terdeteksi dari `netlify.toml`
   - Klik "Deploy site"

3. **Auto Deploy**
   - Setiap push ke branch main akan otomatis deploy
   - Preview deploy untuk pull requests

### Opsi 2: Deploy via Netlify CLI

```bash
# Install Netlify CLI (sekali saja)
npm install -g netlify-cli

# Login
netlify login

# Deploy ke production
netlify deploy --prod

# Atau deploy preview dulu
netlify deploy
```

### Opsi 3: Drag & Drop

```bash
# Build project
npm run build

# Upload folder 'dist' ke https://app.netlify.com/drop
```

## 🔧 Environment Variables

Jika ada environment variables:

1. Di Netlify Dashboard → Site settings → Environment variables
2. Tambahkan variabel yang diperlukan
3. Redeploy site

## 📝 Custom Domain

1. Di Netlify Dashboard → Domain settings
2. Klik "Add custom domain"
3. Ikuti instruksi untuk update DNS

## ⚡ Performance Tips

Build sudah dioptimasi dengan:
- Code splitting (vue-vendor chunk terpisah)
- Minification dengan esbuild
- Cache headers untuk assets
- Gzip compression otomatis dari Netlify

## 🔒 Security Headers

Headers keamanan sudah dikonfigurasi di `netlify.toml`:
- X-Frame-Options
- X-Content-Type-Options
- X-XSS-Protection
- Referrer-Policy

## 🐛 Troubleshooting

**404 saat refresh halaman?**
- Sudah diatasi dengan redirects di `netlify.toml` dan `public/_redirects`

**Build gagal?**
- Pastikan Node version 20 (sudah dikonfigurasi di `.nvmrc`)
- Check build logs di Netlify dashboard

**Assets tidak load?**
- Pastikan path menggunakan `/` prefix
- Check di `index.html` dan komponen Vue

## 📊 Monitoring

Setelah deploy, monitor di Netlify Dashboard:
- Analytics
- Build logs
- Function logs (jika ada)
- Form submissions (jika ada)
