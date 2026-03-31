---
title: "Benchmarks"
description: "Echte Leistungszahlen von halo-ai auf AMD Strix Halo Hardware. Keine synthetischen Lasten, kein Rosinenpicken."
---


Diese Zahlen stammen aus Produktionsworkloads auf echter Hardware. Nichts Synthetisches, nichts herausgepickt.

## Hardware

| Komponente | Spezifikation |
|------------|---------------|
| CPU | AMD Ryzen AI MAX+ 395 |
| Arbeitsspeicher | 128 GB LPDDR5x-8000 |
| GPU | AMD Radeon 8060S (gfx1151) |

## Modell

**Qwen3-30B-A3B** -- Mixture of Experts Architektur. 30 Milliarden Parameter, 3 Milliarden aktiv pro Token. Der ideale Kompromiss zwischen Leistungsfähigkeit und Geschwindigkeit auf lokaler Hardware.

## Vulkan + Flash Attention

Das primäre Backend. Vulkan mit aktiviertem Flash Attention liefert den besten Durchsatz auf Strix Halo.

| Metrik | Wert |
|--------|------|
| Generierungsgeschwindigkeit | 86 tok/s |
| Prompt-Verarbeitung | 178 -- 444 tok/s |
| Zeit bis zum ersten Token | < 110 ms |
| GPU-Auslastung | 97% |
| GPU-Temperatur | 55 C |

## HIP / ROCm

Das alternative Backend für Workloads, die ROCm-Kompatibilität erfordern.

| Metrik | Wert |
|--------|------|
| Generierungsgeschwindigkeit | 70 tok/s |
| Prompt-Verarbeitung | 217 -- 302 tok/s |
| Zeit bis zum ersten Token | < 110 ms |
| GPU-Auslastung | 97% |
| GPU-Temperatur | 55 C |

## Zusammenfassung

Vulkan mit Flash Attention ist das empfohlene Backend für Strix Halo Systeme. Die Generierungsgeschwindigkeit von 86 tok/s bedeutet konversationelle KI in Echtzeit ohne wahrnehmbare Verzögerung. Die Prompt-Verarbeitung erreicht Spitzenwerte von 444 tok/s, wodurch die Kontextaufnahme bei typischen Workloads nahezu augenblicklich erfolgt.

Die Zeit bis zum ersten Token bleibt bei beiden Backends unter 110 Millisekunden. Die GPU hält stabil bei 97% Auslastung und 55 Grad Celsius -- voll ausgelastet, thermisch komfortabel.

Alle Inferenz läuft lokal. Nichts verlässt deine Hardware.

*Entworfen und gebaut vom Architekten.*
