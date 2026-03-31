---
title: "Documentation"
description: "Documentation technique pour la plateforme halo-ai. Architecture, services, sécurité et guides opérationnels."
---


Tout ce qu'il faut pour comprendre, opérer et étendre halo-ai.

## Documentation de base

### Architecture
L'architecture complète du système : 33 services, 17 agents, communication inter-services et couches d'abstraction matérielle. Comment les pièces s'assemblent et pourquoi.
[Lire la documentation Architecture](https://github.com/stampby/halo-ai/blob/main/docs/ARCHITECTURE.md)

### Services
Documentation individuelle des services couvrant la configuration, les dépendances, les ports et les vérifications de santé pour chaque composant de la pile.
[Lire la documentation Services](https://github.com/stampby/halo-ai/blob/main/docs/SERVICES.md)

### Sécurité
Modèle de menaces, isolation réseau, authentification et le principe que rien ne quitte votre matériel à moins que vous le demandiez.
[Lire la documentation Sécurité](https://github.com/stampby/halo-ai/blob/main/docs/SECURITY.md)

### Dépannage
Problèmes courants, commandes de diagnostic, emplacements des journaux et procédures de récupération. Commencez ici quand quelque chose brise.
[Lire la documentation Dépannage](https://github.com/stampby/halo-ai/blob/main/docs/TROUBLESHOOTING.md)

## Sujets avancés

### VPN
Accès distant sécurisé à votre instance halo-ai. Réseau maillé entre machines sans exposer de ports.
[Lire la documentation VPN](https://github.com/stampby/halo-ai/blob/main/docs/VPN.md)

### Protection de la pile
Chiens de garde des services, politiques de redémarrage automatique, surveillance de santé et mécanismes qui gardent halo-ai en vie quand ça dérape.
[Lire la documentation Protection de la pile](https://github.com/stampby/halo-ai/blob/main/docs/STACK-PROTECTION.md)

### Blueprints
Définitions déclaratives de services pour étendre halo-ai avec de nouvelles capacités. Écrivez un blueprint, déposez-le, et le système fait le reste.
[Lire la documentation Blueprints](https://github.com/stampby/halo-ai/blob/main/docs/BLUEPRINTS.md)

### Pipeline autonome
Comment les agents halo-ai se coordonnent sans intervention humaine. Décomposition des tâches, sélection d'agents, exécution et portes de qualité.
[Lire la documentation Pipeline autonome](https://github.com/stampby/halo-ai/blob/main/docs/AUTONOMOUS-PIPELINE.md)

*Concu et construit par l'architecte.*
