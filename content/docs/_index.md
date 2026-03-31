---
title: "Documentation"
description: "Technical documentation for the halo-ai platform. Architecture, services, security, and operational guides."
---

Everything you need to understand, operate, and extend halo-ai. Every doc links to its tutorial.

## Getting Started

### Installation
One command, under 5 minutes. The installer detects your hardware and configures everything.
[Read the docs](https://github.com/stampby/halo-ai#readme) | [Watch the tutorial](/tutorials/#1-installing-halo-ai)

### Free Website
Host a multilingual website for $13/yr. Hugo + Cloudflare Pages. The full recipe.
[Read the guide](/docs/free-website/) | [Watch the tutorial](/tutorials/#6-free-website-in-10-minutes)

## Core Documentation

### Architecture
The full system architecture: 33 services, 27 agents, inter-service communication, and hardware abstraction layers.
[Read the docs](https://github.com/stampby/halo-ai/blob/main/docs/ARCHITECTURE.md)

### Services
Individual service documentation covering configuration, dependencies, ports, and health checks.
[Read the docs](https://github.com/stampby/halo-ai/blob/main/docs/SERVICES.md)

### Security
Threat model, network isolation, authentication. Nothing leaves your hardware unless you tell it to.
[Read the docs](https://github.com/stampby/halo-ai/blob/main/docs/SECURITY.md) | [Watch the tutorial](/tutorials/#10-security-hardening) | [View the audit](/docs/security-audit/)

### Troubleshooting
Common issues, diagnostic commands, log locations, and recovery procedures.
[Read the docs](https://github.com/stampby/halo-ai/blob/main/docs/TROUBLESHOOTING.md)

## Infrastructure

### Kansas City Shuffle — SSH Ring Bus
Wire up the mesh. Every machine talks to every other machine. Bidirectional, resilient, no single point of failure.
[Read the docs](https://github.com/stampby/halo-ai/blob/main/docs/KANSAS-CITY-SHUFFLE.md) | [Watch the tutorial](/tutorials/#5-kansas-city-shuffle--ssh-ring-bus)

### GlusterFS Replicated Storage
Combine drives across machines into one pool. Data exists on every node.
[Watch the tutorial](/tutorials/#8-glusterfs-replicated-storage)

### VPN
Secure remote access. Mesh networking between machines without exposing ports.
[Read the docs](https://github.com/stampby/halo-ai/blob/main/docs/VPN.md)

### Stack Protection
Freeze, thaw, rollback. Survive Arch Linux rolling updates. Compiled from source, protected by snapshots.
[Read the docs](https://github.com/stampby/halo-ai/blob/main/docs/STACK-PROTECTION.md)

## AI & Voice

### Voice Platform
Clone any voice in 30 seconds. Whisper STT, Voxtral understanding, Kokoro TTS. Full pipeline.
[Read more](/voice/) | [Watch the tutorial](/tutorials/#4-voice-cloning-in-30-seconds)

### Image Generation
ComfyUI with SDXL and Flux. 123.5GB VRAM on AMD Strix Halo.
[Watch the tutorial](/tutorials/#3-image-generation-with-comfyui)

### Agents
27 autonomous agents. Meet the family.
[Read more](/agents/) | [Read the docs](https://github.com/stampby/halo-ai/blob/main/docs/AGENTS.md)

## Community

### Discord Bots
7 bots, 24/7, every language. Deploy the family in one command.
[Watch the tutorial](/tutorials/#7-deploy-the-agent-family)

### Game Servers
Pick a game, deploy it, players connect to home.halo-ai.ca.
[Watch the tutorial](/tutorials/#9-game-server-deploy)

## Advanced

### Blueprints
Declarative service definitions for extending halo-ai.
[Read the docs](https://github.com/stampby/halo-ai/blob/main/docs/BLUEPRINTS.md)

### Autonomous Pipeline
How agents coordinate without human intervention.
[Read the docs](https://github.com/stampby/halo-ai/blob/main/docs/AUTONOMOUS-PIPELINE.md)

### Security Audit
Full public audit — every finding, every fix, every firewall rule. No more secrets.
[Read the audit](/docs/security-audit/)

*Designed and built by the architect.*
