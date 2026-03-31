---
title: "Benchmarks"
description: "Cifras reales de rendimiento de halo-ai ejecutándose en hardware AMD Strix Halo. Sin cargas sintéticas, sin selección interesada."
---


Estos números provienen de cargas de trabajo en producción sobre hardware real. Nada sintético, nada seleccionado a conveniencia.

## Hardware

| Componente | Especificación |
|-----------|--------------|
| CPU | AMD Ryzen AI MAX+ 395 |
| Memoria | 128 GB LPDDR5x-8000 |
| GPU | AMD Radeon 8060S (gfx1151) |

## Modelo

**Qwen3-30B-A3B** -- Arquitectura Mixture of Experts. 30 mil millones de parámetros, 3 mil millones activos por token. El punto óptimo entre capacidad y velocidad en hardware local.

## Vulkan + Flash Attention

El backend principal. Vulkan con Flash Attention activado ofrece el mayor rendimiento en Strix Halo.

| Métrica | Valor |
|--------|-------|
| Velocidad de generación | 86 tok/s |
| Procesamiento de prompts | 178 -- 444 tok/s |
| Tiempo hasta el primer token | < 110 ms |
| Utilización de GPU | 97% |
| Temperatura de GPU | 55 C |

## HIP / ROCm

El backend alternativo para cargas de trabajo que requieren compatibilidad con ROCm.

| Métrica | Valor |
|--------|-------|
| Velocidad de generación | 70 tok/s |
| Procesamiento de prompts | 217 -- 302 tok/s |
| Tiempo hasta el primer token | < 110 ms |
| Utilización de GPU | 97% |
| Temperatura de GPU | 55 C |

## Resumen

Vulkan con Flash Attention es el backend recomendado para sistemas Strix Halo. La velocidad de generación de 86 tok/s permite IA conversacional en tiempo real sin retardo perceptible. El procesamiento de prompts alcanza picos de 444 tok/s, haciendo que la ingesta de contexto sea prácticamente instantánea para cargas de trabajo típicas.

El tiempo hasta el primer token se mantiene por debajo de 110 milisegundos en ambos backends. La GPU se mantiene estable al 97% de utilización y 55 grados Celsius -- a plena carga, térmicamente cómoda.

Toda la inferencia se ejecuta localmente. Nada sale de tu hardware.

*Diseñado y construido por el arquitecto.*
