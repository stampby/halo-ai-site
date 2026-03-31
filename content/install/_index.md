---
title: "Installation"
description: "Get halo-ai running on your hardware in minutes. Arch Linux, CachyOS, Ubuntu, Fedora."
---

# Installation

halo-ai installs with two commands. No containers, no cloud dependencies, no telemetry. Everything runs on your machine.

## Requirements

| Component | Minimum | Recommended |
|-----------|---------|-------------|
| RAM | 16 GB | 64 GB+ |
| GPU | AMD or NVIDIA (Vulkan capable) | AMD Radeon 8060S or better |
| Storage | 20 GB free | 50 GB+ (models will use space) |
| OS | Linux (systemd) | Arch Linux / CachyOS |

## Supported Distributions

- **Arch Linux** -- first-class support, tested daily
- **CachyOS** -- Arch-based, performance-tuned, fully compatible
- **Ubuntu 22.04+** -- supported
- **Fedora 39+** -- supported

## Quick Start

```bash
git clone https://github.com/halo-ai-official/halo-ai.git
cd halo-ai
./install.sh
```

The installer detects your hardware, configures GPU acceleration, pulls models, and stands up all 33 services. On AMD Strix Halo hardware, expect full deployment in under ten minutes.

## What Gets Installed

halo-ai deploys 33 interconnected services covering inference, voice synthesis, speech recognition, image generation, code analysis, security monitoring, and autonomous agent coordination. Each service is managed through systemd and can be individually started, stopped, or inspected.

## AMD Strix Halo Optimization

The installer applies hardware-specific tuning for Strix Halo systems automatically. This includes Vulkan backend selection, Flash Attention enablement, memory allocation strategies for LPDDR5x, and fan curve profiles. If you are running on a Strix Halo machine, halo-ai will find it and use every watt.

## Post-Install

After installation completes, open your browser and navigate to your local halo-ai instance. The Man Cave dashboard will be waiting.

For troubleshooting, architecture details, and service documentation, see the [Documentation](/docs/) hub.

*Designed and built by the architect.*
