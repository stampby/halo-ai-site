---
title: "Audiobook Library"
description: "Professional audiobooks read by a real human voice, AI-delivered. Browse the catalog."
---

<style>
.book-grid { display: grid; grid-template-columns: repeat(auto-fill, minmax(200px, 1fr)); gap: 1.5rem; margin: 2rem 0; }
.book-card { background: var(--surface); border: 1px solid var(--border); border-radius: 12px; padding: 1.5rem; text-align: center; transition: all 0.2s; }
.book-card:hover { border-color: var(--accent); transform: translateY(-4px); }
.book-card h4 { font-size: 1rem; margin-bottom: 0.3rem; }
.book-card .author { color: var(--text-dim); font-size: 0.85rem; margin-bottom: 0.5rem; }
.book-card .badge { display: inline-block; font-size: 0.7rem; padding: 2px 8px; border-radius: 4px; letter-spacing: 1px; }
.badge-live { background: rgba(0,212,255,0.15); color: var(--accent); }
.badge-soon { background: rgba(136,136,160,0.15); color: var(--text-dim); }
.badge-nsfw { background: rgba(255,68,68,0.15); color: #ff4444; }
.book-card.greyed { opacity: 0.4; filter: grayscale(0.5); }
.book-card.greyed:hover { opacity: 0.6; }
.nsfw-gate { text-align: center; padding: 2rem; background: var(--surface); border: 1px solid rgba(255,68,68,0.2); border-radius: 12px; margin: 2rem 0; }
</style>

A real human voice. AI-delivered. Every audiobook produced on bare metal hardware. No studio. No middlemen. No robotic TTS.

One voice. Infinite output. 24/7.

## How It Works

1. Send a manuscript — any format, any length
2. The architect's voice reads it — natural inflection, proper pacing, emotional range
3. Amp masters the audio — chaptered, normalized, production quality
4. You receive the finished audiobook

No scheduling. No studio booking. No $5000 narrator fees. A professional audiobook from a house in New Brunswick.

## Voice Demos

<div class="book-grid">
<div class="book-card">
<h4>House of the Rising Sun</h4>
<div class="author">Traditional — Public Domain</div>
<span class="badge badge-soon">demo coming</span>
<p style="color:var(--text-dim);font-size:0.8rem;margin-top:0.5rem;">The launch demo. The architect's voice on the song everyone knows.</p>
</div>

<div class="book-card">
<h4>Barry White Collection</h4>
<div class="author">Voice Range Demo</div>
<span class="badge badge-soon">coming soon</span>
<p style="color:var(--text-dim);font-size:0.8rem;margin-top:0.5rem;">Deep bass showcase. Velvet.</p>
</div>
</div>

## Featured Audiobooks

<div class="book-grid">
<div class="book-card">
<h4>1984</h4>
<div class="author">George Orwell</div>
<span class="badge badge-soon">coming soon</span>
<p style="color:var(--text-dim);font-size:0.8rem;margin-top:0.5rem;">Public domain in Canada. The book that inspired halo-ai's world.</p>
</div>

<div class="book-card">
<h4>The Art of War</h4>
<div class="author">Sun Tzu</div>
<span class="badge badge-soon">coming soon</span>
<p style="color:var(--text-dim);font-size:0.8rem;margin-top:0.5rem;">Public domain. Strategy. Read with authority.</p>
</div>

<div class="book-card">
<h4>Frankenstein</h4>
<div class="author">Mary Shelley</div>
<span class="badge badge-soon">coming soon</span>
<p style="color:var(--text-dim);font-size:0.8rem;margin-top:0.5rem;">Public domain. The original AI story.</p>
</div>

<div class="book-card">
<h4>Dracula</h4>
<div class="author">Bram Stoker</div>
<span class="badge badge-soon">coming soon</span>
<p style="color:var(--text-dim);font-size:0.8rem;margin-top:0.5rem;">Public domain. Dark. Gritty. Perfect for this voice.</p>
</div>

<div class="book-card">
<h4>The Great Gatsby</h4>
<div class="author">F. Scott Fitzgerald</div>
<span class="badge badge-soon">coming soon</span>
<p style="color:var(--text-dim);font-size:0.8rem;margin-top:0.5rem;">Public domain. American classic.</p>
</div>

<div class="book-card">
<h4>Heart of Darkness</h4>
<div class="author">Joseph Conrad</div>
<span class="badge badge-soon">coming soon</span>
<p style="color:var(--text-dim);font-size:0.8rem;margin-top:0.5rem;">Public domain. "The horror."</p>
</div>
</div>

## For Authors & Publishers

You wrote the book. You shouldn't have to spend $5000 to hear it read.

**Indie authors:** Send your manuscript. Get a professional audiobook back. Chaptered, mastered, ready for Audible, Spotify, Apple Books.

**Small publishers:** Scale your audiobook catalog without scaling your budget. One voice, consistent quality, unlimited throughput.

**The pitch is simple:** listen to the demo. If that voice can sing House of the Rising Sun, it can read your book.

## Pricing

| Tier | Output | Price |
|---|---|---|
| Sample | 30 seconds | Free |
| Short | Up to 30 minutes | Contact |
| Full Book | Up to 20 hours | Contact |
| Subscription | Unlimited monthly | Contact |

## NSFW Section

<div class="nsfw-gate">
<span class="badge badge-nsfw">18+</span>
<p style="margin-top:1rem;color:var(--text-dim);">Adult content audiobooks are available by request. Age verification required.</p>
</div>

<div class="book-grid">
<div class="book-card greyed">
<h4>Coming Soon</h4>
<div class="author">Adult Fiction</div>
<span class="badge badge-nsfw">18+</span>
</div>

<div class="book-card greyed">
<h4>Coming Soon</h4>
<div class="author">Romance</div>
<span class="badge badge-nsfw">18+</span>
</div>

<div class="book-card greyed">
<h4>Coming Soon</h4>
<div class="author">Dark Fiction</div>
<span class="badge badge-nsfw">18+</span>
</div>
</div>

## The Technology

Every audiobook is produced on the halo-ai stack:

- **Voice model:** architect's cloned voice — trained from 30 minutes of SM7B recordings
- **Pipeline:** Whisper (STT) → Voxtral (understanding) → Qwen3 (reasoning) → Kokoro (TTS output)
- **Mastering:** Amp agent handles normalization, chaptering, and final production
- **Hardware:** AMD Strix Halo, 128GB unified memory, bare metal
- **Privacy:** your manuscript never leaves the network. Zero cloud. Zero data retention.

This is not robotic TTS. This is a real voice, AI-delivered. The difference is everything.

*Designed and built by the architect.*
