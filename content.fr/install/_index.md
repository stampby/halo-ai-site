---
title: "Installation"
description: "Faites rouler halo-ai sur votre matériel en quelques minutes. Arch Linux, CachyOS, Ubuntu, Fedora."
---


halo-ai s'installe avec deux commandes. Pas de conteneurs, pas de dépendances infonuagiques, pas de télémétrie. Tout roule sur votre machine.

## Prérequis

| Composant | Minimum | Recommandé |
|-----------|---------|------------|
| RAM | 16 Go | 64 Go+ |
| GPU | AMD ou NVIDIA (compatible Vulkan) | AMD Radeon 8060S ou mieux |
| Stockage | 20 Go libres | 50 Go+ (les modèles prennent de la place) |
| OS | Linux (systemd) | Arch Linux / CachyOS |

## Distributions supportées

- **Arch Linux** -- support de première classe, testé quotidiennement
- **CachyOS** -- basé sur Arch, optimisé pour la performance, entièrement compatible
- **Ubuntu 22.04+** -- supporté
- **Fedora 39+** -- supporté

## Démarrage rapide

```bash
git clone https://github.com/stampby/halo-ai.git
cd halo-ai
./install.sh
```

L'installateur détecte votre matériel, configure l'accélération GPU, télécharge les modèles et monte les 33 services. Sur du matériel AMD Strix Halo, attendez-vous à un déploiement complet en moins de dix minutes.

## Ce qui est installé

halo-ai déploie 33 services interconnectés couvrant l'inférence, la synthèse vocale, la reconnaissance vocale, la génération d'images, l'analyse de code, la surveillance de sécurité et la coordination autonome des agents. Chaque service est géré par systemd et peut être démarré, arrêté ou inspecté individuellement.

## Optimisation AMD Strix Halo

L'installateur applique automatiquement un réglage spécifique au matériel pour les systèmes Strix Halo. Cela inclut la sélection du backend Vulkan, l'activation de Flash Attention, les stratégies d'allocation mémoire pour le LPDDR5x et les profils de courbe de ventilateur. Si vous roulez sur une machine Strix Halo, halo-ai va la trouver et utiliser chaque watt.

## Après l'installation

Une fois l'installation terminée, ouvrez votre navigateur et accédez à votre instance locale de halo-ai. Le tableau de bord Man Cave vous attend.

Pour le dépannage, les détails d'architecture et la documentation des services, consultez le hub de [Documentation](/docs/).

*Concu et construit par l'architecte.*
