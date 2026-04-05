---
title: "Benchmarks"
description: "Real performance numbers from halo-ai running on AMD Strix Halo hardware. No synthetic loads, no cherry-picking."
---


These numbers come from production workloads on real hardware. Nothing synthetic, nothing cherry-picked.

## Hardware

| Component | Specification |
|-----------|--------------|
| CPU | AMD Ryzen AI MAX+ 395 |
| Memory | 128 GB LPDDR5x-8000 |
| GPU | AMD Radeon 8060S (gfx1151) |

## Model

**Qwen3-30B-A3B** -- Mixture of Experts architecture. 30 billion parameters, 3 billion active per token. The sweet spot between capability and speed on local hardware.

## Vulkan + Flash Attention

The primary backend. Vulkan with Flash Attention enabled delivers the best throughput on Strix Halo.

| Metric | Value |
|--------|-------|
| Generation speed | 236 tok/s |
| Prompt processing | 178 -- 444 tok/s |
| Time to first token | < 110 ms |
| GPU utilization | 97% |
| GPU temperature | 55 C |

## HIP / ROCm

The alternative backend for workloads that require ROCm compatibility.

| Metric | Value |
|--------|-------|
| Generation speed | 70 tok/s |
| Prompt processing | 217 -- 302 tok/s |
| Time to first token | < 110 ms |
| GPU utilization | 97% |
| GPU temperature | 55 C |

## Summary

Vulkan with Flash Attention is the recommended backend for Strix Halo systems. The 236 tok/s generation speed means real-time conversational AI with no perceptible delay. Prompt processing peaks at 444 tok/s, making context ingestion nearly instantaneous for typical workloads.

Time to first token stays under 110 milliseconds on both backends. The GPU holds steady at 97% utilization and 55 degrees Celsius -- fully loaded, thermally comfortable.

All inference runs locally. Nothing leaves your hardware.

*Designed and built by the architect.*
