---
title: "Documentation"
description: "Technical documentation for the halo-ai platform. Architecture, services, security, and operational guides."
---

# Documentation

Everything you need to understand, operate, and extend halo-ai.

## Core Documentation

### Architecture
The full system architecture: 33 services, 17 agents, inter-service communication, and hardware abstraction layers. How the pieces fit together and why.
[Read the Architecture docs](https://github.com/halo-ai-official/halo-ai/blob/main/docs/ARCHITECTURE.md)

### Services
Individual service documentation covering configuration, dependencies, ports, and health checks for every component in the stack.
[Read the Services docs](https://github.com/halo-ai-official/halo-ai/blob/main/docs/SERVICES.md)

### Security
Threat model, network isolation, authentication, and the principle that nothing leaves your hardware unless you tell it to.
[Read the Security docs](https://github.com/halo-ai-official/halo-ai/blob/main/docs/SECURITY.md)

### Troubleshooting
Common issues, diagnostic commands, log locations, and recovery procedures. Start here when something breaks.
[Read the Troubleshooting docs](https://github.com/halo-ai-official/halo-ai/blob/main/docs/TROUBLESHOOTING.md)

## Advanced Topics

### VPN
Secure remote access to your halo-ai instance. Mesh networking between machines without exposing ports.
[Read the VPN docs](https://github.com/halo-ai-official/halo-ai/blob/main/docs/VPN.md)

### Stack Protection
Service watchdogs, automatic restart policies, health monitoring, and the mechanisms that keep halo-ai alive when things go sideways.
[Read the Stack Protection docs](https://github.com/halo-ai-official/halo-ai/blob/main/docs/STACK_PROTECTION.md)

### Blueprints
Declarative service definitions for extending halo-ai with new capabilities. Write a blueprint, drop it in, and the system does the rest.
[Read the Blueprints docs](https://github.com/halo-ai-official/halo-ai/blob/main/docs/BLUEPRINTS.md)

### Autonomous Pipeline
How halo-ai agents coordinate without human intervention. Task decomposition, agent selection, execution, and quality gates.
[Read the Autonomous Pipeline docs](https://github.com/halo-ai-official/halo-ai/blob/main/docs/AUTONOMOUS_PIPELINE.md)

*Designed and built by the architect.*
