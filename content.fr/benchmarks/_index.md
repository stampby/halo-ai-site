---
title: "Benchmarks"
description: "Des vrais chiffres de performance de halo-ai sur du matériel AMD Strix Halo. Pas de charges synthétiques, pas de sélection avantageuse."
---


Ces chiffres viennent de charges de travail en production sur du vrai matériel. Rien de synthétique, rien de trié sur le volet.

## Matériel

| Composant | Spécification |
|-----------|--------------|
| CPU | AMD Ryzen AI MAX+ 395 |
| Mémoire | 128 Go LPDDR5x-8000 |
| GPU | AMD Radeon 8060S (gfx1151) |

## Modèle

**Qwen3-30B-A3B** -- Architecture Mixture of Experts. 30 milliards de paramètres, 3 milliards actifs par token. Le point idéal entre capacité et vitesse sur du matériel local.

## Vulkan + Flash Attention

Le backend principal. Vulkan avec Flash Attention activé livre le meilleur débit sur Strix Halo.

| Métrique | Valeur |
|----------|--------|
| Vitesse de génération | 86 tok/s |
| Traitement de prompt | 178 -- 444 tok/s |
| Temps avant le premier token | < 110 ms |
| Utilisation GPU | 97% |
| Température GPU | 55 C |

## HIP / ROCm

Le backend alternatif pour les charges de travail qui nécessitent la compatibilité ROCm.

| Métrique | Valeur |
|----------|--------|
| Vitesse de génération | 70 tok/s |
| Traitement de prompt | 217 -- 302 tok/s |
| Temps avant le premier token | < 110 ms |
| Utilisation GPU | 97% |
| Température GPU | 55 C |

## Résumé

Vulkan avec Flash Attention est le backend recommandé pour les systèmes Strix Halo. La vitesse de génération de 86 tok/s veut dire de l'IA conversationnelle en temps réel sans délai perceptible. Le traitement de prompt culmine à 444 tok/s, rendant l'ingestion de contexte quasi instantanée pour les charges typiques.

Le temps avant le premier token reste en dessous de 110 millisecondes sur les deux backends. Le GPU tient stable à 97% d'utilisation et 55 degrés Celsius -- chargé au max, thermiquement confortable.

Toute l'inférence roule localement. Rien quitte votre matériel.

*Concu et construit par l'architecte.*
