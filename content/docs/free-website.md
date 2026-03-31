---
title: "How to Host a Website for Free — The halo-ai Way"
description: "Complete guide to hosting a multilingual website with zero cost. Hugo + Cloudflare Pages + Namecheap. No hosting fees, no servers, no middlemen."
date: 2026-03-31
---

This entire website — halo-ai.studio — costs nothing to host. Zero. The only cost is the domain name (~$13-17/yr). Everything else is free.

Here is exactly how we did it so you can replicate it in under 30 minutes.

## What You Get

- A fast, static website with unlimited pages
- Free SSL (HTTPS)
- Free global CDN (your site loads fast everywhere)
- Free DDoS protection
- Custom domain
- Multilingual support (we run 7 languages)
- Auto-deploy from GitHub — push code, site updates
- Zero hosting fees. Forever.

## The Stack

| Component | Purpose | Cost |
|---|---|---|
| Hugo | Static site generator — builds HTML from markdown | Free (open source) |
| Cloudflare Pages | Hosting — serves your site from the edge | Free tier |
| Cloudflare DNS | Domain resolution + protection | Free tier |
| GitHub | Source code + auto-deploy trigger | Free tier |
| Namecheap | Domain registrar | ~$13-17/yr |

Total annual cost: **one domain name**. That's it.

## Step 1: Install Hugo

Hugo is the fastest static site generator. It builds hundreds of pages in milliseconds.

**Arch Linux:**
```bash
sudo pacman -S hugo
```

**Ubuntu/Debian:**
```bash
sudo apt install hugo
```

**macOS:**
```bash
brew install hugo
```

**From source (the halo-ai way):**
```bash
go install github.com/gohugoio/hugo@latest
```

Verify: `hugo version`

## Step 2: Create Your Site

```bash
hugo new site my-site
cd my-site
git init
```

Create a simple theme or use one from [themes.gohugo.io](https://themes.gohugo.io). We built ours from scratch — a single CSS file and a handful of HTML templates.

### Minimal theme structure:
```
themes/my-theme/
  layouts/
    _default/
      baseof.html    # base template
      single.html    # single page
      list.html      # list/index page
    index.html       # home page
    partials/
      head.html      # <head> tag
      nav.html       # navigation
      footer.html    # footer
  static/
    css/style.css    # one CSS file
```

### Minimal `hugo.toml`:
```toml
baseURL = "https://your-domain.com/"
title = "My Site"
theme = "my-theme"
```

### Add content:
```bash
mkdir content/about
cat > content/about/_index.md << 'EOF'
---
title: "About"
---

Your content here in markdown.
EOF
```

### Build and preview:
```bash
hugo server
# Open http://localhost:1313
```

## Step 3: Register a Domain

Go to [Namecheap](https://namecheap.com) and register your domain. Tips:

- `.studio` domains are ~$13/yr
- `.ca` domains are ~$16/yr (Canadian)
- `.com` is classic but often taken
- Enable **WHOIS privacy** (free on Namecheap) to hide your personal info
- Skip all upsells — no hosting, no SSL, no premium DNS

## Step 4: Set Up Cloudflare

1. Create a free account at [cloudflare.com](https://cloudflare.com)
2. Click **Add a Site** and enter your domain
3. Select the **Free** plan
4. Cloudflare will give you two nameservers (e.g., `dale.ns.cloudflare.com`)
5. Go back to Namecheap → your domain → **Nameservers** → switch to **Custom DNS**
6. Enter the two Cloudflare nameservers
7. Save and wait for propagation (usually minutes, up to 24 hours)

### Add DNS records:

| Type | Name | Content | Proxy |
|---|---|---|---|
| A | @ | 192.0.2.1 | Proxied (orange) |
| CNAME | www | your-domain.com | Proxied (orange) |

The `192.0.2.1` is a placeholder — Cloudflare Pages will override it.

## Step 5: Deploy to Cloudflare Pages

### Option A: Wrangler CLI (what we use)

```bash
# Install
sudo npm install -g wrangler

# Create project
export CLOUDFLARE_API_TOKEN="your-api-token"
wrangler pages project create my-site --production-branch main

# Build and deploy
hugo
wrangler pages deploy public --project-name my-site
```

Get your API token from Cloudflare → My Profile → API Tokens → Create Token → "Edit Cloudflare Workers" template.

### Option B: GitHub auto-deploy

1. Push your Hugo site to GitHub
2. In Cloudflare → Workers & Pages → Create → Pages → Connect to Git
3. Select your repo
4. Build command: `hugo`
5. Build output directory: `public`
6. Deploy

Every `git push` automatically rebuilds and deploys your site.

### Connect your custom domain:

In Cloudflare → Workers & Pages → your project → Custom Domains → Add `your-domain.com`

## Step 6: Add DDNS (Optional — for game servers)

If you want a subdomain pointing to your home IP (for game servers, VPN, etc.):

1. In Cloudflare DNS, add an A record:
   - Name: `home`
   - Content: your WAN IP
   - Proxy: **DNS only** (grey cloud — important for game servers)

2. Set up auto-update on your router or server:
```bash
# Simple DDNS update script
ZONE_ID="your-zone-id"
RECORD_ID="your-record-id"
TOKEN="your-api-token"
IP=$(curl -s https://api.ipify.org)

curl -s -X PUT "https://api.cloudflare.com/client/v4/zones/$ZONE_ID/dns_records/$RECORD_ID" \
  -H "Authorization: Bearer $TOKEN" \
  -H "Content-Type: application/json" \
  --data "{\"type\":\"A\",\"name\":\"home\",\"content\":\"$IP\",\"ttl\":1}"
```

Run this on a cron every 5 minutes. Your `home.your-domain.com` always points to your current IP.

## Step 7: Add Languages (Optional)

Hugo has built-in multilingual support. We serve 7 languages from the same site.

In `hugo.toml`:
```toml
defaultContentLanguage = "en"

[languages]
  [languages.en]
    languageName = "English"
    contentDir = "content"
  [languages.fr]
    languageName = "Francais"
    contentDir = "content.fr"
  [languages.es]
    languageName = "Espanol"
    contentDir = "content.es"
```

Create translated content in `content.fr/`, `content.es/`, etc. Same filenames, translated text.

## What This Costs vs What People Pay

| What people pay | What we pay |
|---|---|
| Shared hosting: $5-15/mo | $0 |
| SSL certificate: $50-100/yr | $0 (Cloudflare free) |
| CDN: $20-50/mo | $0 (Cloudflare free) |
| DDoS protection: $200+/mo | $0 (Cloudflare free) |
| Website builder: $12-40/mo | $0 (Hugo is free) |
| Domain: $10-15/yr | $13-17/yr |
| **Total/yr: $500-2000+** | **$13-17** |

That's not a typo.

## The halo-ai.studio Numbers

- **151 pages** across 7 languages
- **50ms** build time
- **Zero** JavaScript frameworks
- **Zero** hosting cost
- **Zero** data retention
- Built in one session, deployed in seconds

The website you are reading right now runs on this exact stack. No secrets. No proprietary tools. Everything listed here is what we use.

Replicate it. Make it yours.

*Designed and built by the architect.*
