---
title: "Benchmarks"
description: "Numeros reales de rendimiento de halo-ai corriendo en hardware AMD Strix Halo. Sin cargas sinteticas, sin cherry-picking."
---


Estos numeros vienen de cargas de trabajo en produccion sobre hardware real. Nada sintetico, nada seleccionado a modo.

## Hardware

| Componente | Especificacion |
|-----------|--------------|
| CPU | AMD Ryzen AI MAX+ 395 |
| Memoria | 128 GB LPDDR5x-8000 |
| GPU | AMD Radeon 8060S (gfx1151) |

## Modelo

**Qwen3-30B-A3B** -- arquitectura Mixture of Experts. 30 mil millones de parametros, 3 mil millones activos por token. El punto ideal entre capacidad y velocidad en hardware local.

## Vulkan + Flash Attention

El backend principal. Vulkan con Flash Attention habilitado entrega el mejor throughput en Strix Halo.

| Metrica | Valor |
|--------|-------|
| Velocidad de generacion | 86 tok/s |
| Procesamiento de prompt | 178 -- 444 tok/s |
| Tiempo al primer token | < 110 ms |
| Utilizacion de GPU | 97% |
| Temperatura de GPU | 55 C |

## HIP / ROCm

El backend alternativo para cargas de trabajo que requieren compatibilidad con ROCm.

| Metrica | Valor |
|--------|-------|
| Velocidad de generacion | 70 tok/s |
| Procesamiento de prompt | 217 -- 302 tok/s |
| Tiempo al primer token | < 110 ms |
| Utilizacion de GPU | 97% |
| Temperatura de GPU | 55 C |

## Resumen

Vulkan con Flash Attention es el backend recomendado para sistemas Strix Halo. La velocidad de generacion de 86 tok/s significa IA conversacional en tiempo real sin retraso perceptible. El procesamiento de prompts alcanza picos de 444 tok/s, haciendo que la ingesta de contexto sea practicamente instantanea para cargas de trabajo tipicas.

El tiempo al primer token se mantiene por debajo de 110 milisegundos en ambos backends. La GPU se mantiene estable al 97% de utilizacion y 55 grados Celsius -- a toda carga, termicamente comoda.

Toda la inferencia corre localmente. Nada sale de tu hardware.

*Disenado y construido por el arquitecto.*
