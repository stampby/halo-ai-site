---
title: "Voice Platform"
description: "Clone any voice with 30 seconds of audio. Text-to-speech, speech-to-text, and Voice-as-a-Service. Everything stays local."
---


*No autotune. No filter. Just raw performance from a real person, delivered by AI.*

Your voice. Your hardware. Nobody else's business.

halo-ai's voice platform handles synthesis, recognition, and cloning -- all running locally, all private by default. Thirty seconds of reference audio is enough to build a voice model. That model never leaves your machine.

## Core Stack

| Component | Engine | Purpose |
|-----------|--------|---------|
| Text-to-Speech | Kokoro TTS | High-fidelity voice synthesis |
| Speech-to-Text | Whisper | Transcription and real-time recognition |
| Voice Understanding | Voxtral (Mistral) | Multimodal voice + text reasoning |
| Voice Cloning | 30-second capture | Custom voice model from minimal audio |

## Voxtral — Mistral Voice Weights

We run Voxtral, Mistral's multimodal voice model. It understands audio natively — not just transcription, but comprehension. Feed it a voice recording and it reasons about what was said, the tone, the intent. Combined with Whisper for raw STT and Kokoro for output, the full pipeline is:

**Voice in (Whisper) → Understanding (Voxtral) → Reasoning (Qwen3-30B) → Voice out (Kokoro)**

All local. All on AMD Strix Halo. No cloud API. The weights run on the same hardware as everything else — 128GB unified memory means the voice model and the LLM coexist without swapping.

## Voice-as-a-Service

The voice platform powers multiple services across the halo-ai ecosystem:

### Audiobooks
Feed it a manuscript. Pick a voice -- yours, a clone, or one of the built-in models. Get a produced audiobook with chapter markers, consistent pacing, and natural inflection. Amp handles the mastering.

### Music Production
Voice models integrated into the music pipeline. Sing lead vocals without singing. Layer harmonies from a single voice source. The Downcomers -- halo-ai's resident band -- use cloned vocals for every track.

### Game Voices
Dynamic character dialog generated in real time. Dealer writes the lines, the voice platform speaks them. Every NPC has a voice. Every run sounds different.

### Live Streaming Co-Host
A real-time voice companion for streams. Responds to chat, comments on gameplay, and maintains a consistent persona throughout the broadcast. Low latency. Natural cadence.

## The Business Model

**Songwriter writes. Producer produces. Your voice performs. AI delivers.**

Three humans. One machine. Everyone does their job. Nobody gets replaced.

A songwriter writes lyrics. A producer arranges the track. Real musicians play real instruments. The voice model delivers the vocal performance — raw, unfiltered, no autotune. AI is the transport layer, not the creator.

This is not about replacing guitar players, drummers, producers, or songwriters. If a human can physically do it — play an instrument, write a lyric, turn a knob — let the human do it.

The voice pipeline exists to put a real person's voice where that person cannot physically be. A singer in New Brunswick collaborating with a producer in Sarasota. A narrator reading a manuscript at 3 AM while the author sleeps. A voice actor performing in six languages without leaving home.

Not every artist writes their own lyrics. Ozzy barely wrote any. But he PERFORMED them. The performance is the product. The voice is the instrument. AI just gets it to the room.

AI handles what keyboards handle — text, data, generation, processing. Humans do what humans do — play guitar, hit drums, create with their hands. The line is clear.

### The Demo

House of the Rising Sun. Public domain. A song everyone on earth recognizes. The architect's cloned voice singing over a real instrumental backing. Not AI-generated music — a real voice, AI-delivered. That is the proof of concept.

The goal: give producers like Rick Beato an API endpoint. He produces. His musicians play. The architect's voice sings. From a house in New Brunswick to a studio anywhere in the world. No travel. No session booking. Just silicon and a voice.

## The Downcomers

halo-ai's backup band. Heavy blues, bagpipes meeting electric guitar, AC/DC crossed with Led Zeppelin crossed with Texas Hippie Coalition grit. All vocals are cloned. All instruments are synthesized. The music is real. The band waits in the back pocket until called.

The focus is voice. The band is there if needed. But the business is the voice.

## Memorial Voice Cloning

Preserve a voice that matters to you. Thirty seconds of audio from a phone call, a voicemail, a home video. The model captures tone, cadence, and character. It stays on your hardware, encrypted, for as long as you want it there.

## Privacy

The voice model never uploads. Never phones home. Never trains on your data for someone else's benefit. What you record stays recorded on your drives and nowhere else. This is not negotiable.

*Designed and built by the architect.*
