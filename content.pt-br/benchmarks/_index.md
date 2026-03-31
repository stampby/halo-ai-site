---
title: "Benchmarks"
description: "Números reais de performance do halo-ai rodando em hardware AMD Strix Halo. Sem cargas sintéticas, sem seleção a dedo."
---


Esses números vêm de cargas de trabalho em produção, em hardware real. Nada sintético, nada selecionado a dedo.

## Hardware

| Componente | Especificação |
|------------|---------------|
| CPU | AMD Ryzen AI MAX+ 395 |
| Memória | 128 GB LPDDR5x-8000 |
| GPU | AMD Radeon 8060S (gfx1151) |

## Modelo

**Qwen3-30B-A3B** -- Arquitetura Mixture of Experts. 30 bilhões de parâmetros, 3 bilhões ativos por token. O ponto ideal entre capacidade e velocidade em hardware local.

## Vulkan + Flash Attention

O backend principal. Vulkan com Flash Attention habilitado entrega o melhor throughput no Strix Halo.

| Métrica | Valor |
|---------|-------|
| Velocidade de geração | 86 tok/s |
| Processamento de prompt | 178 -- 444 tok/s |
| Tempo até o primeiro token | < 110 ms |
| Utilização da GPU | 97% |
| Temperatura da GPU | 55 C |

## HIP / ROCm

O backend alternativo para cargas de trabalho que exigem compatibilidade com ROCm.

| Métrica | Valor |
|---------|-------|
| Velocidade de geração | 70 tok/s |
| Processamento de prompt | 217 -- 302 tok/s |
| Tempo até o primeiro token | < 110 ms |
| Utilização da GPU | 97% |
| Temperatura da GPU | 55 C |

## Resumo

Vulkan com Flash Attention é o backend recomendado para sistemas Strix Halo. A velocidade de geração de 86 tok/s significa IA conversacional em tempo real sem atraso perceptível. O processamento de prompt chega a 444 tok/s, tornando a ingestão de contexto praticamente instantânea para cargas típicas.

O tempo até o primeiro token fica abaixo de 110 milissegundos em ambos os backends. A GPU se mantém estável em 97% de utilização e 55 graus Celsius -- carga total, termicamente confortável.

Toda inferência roda localmente. Nada sai do seu hardware.

*Projetado e construido pelo arquiteto.*
