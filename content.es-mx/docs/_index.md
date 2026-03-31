---
title: "Documentacion"
description: "Documentacion tecnica de la plataforma halo-ai. Arquitectura, servicios, seguridad y guias operativas."
---


Todo lo que necesitas para entender, operar y extender halo-ai.

## Documentacion Principal

### Arquitectura
La arquitectura completa del sistema: 33 servicios, 17 agentes, comunicacion entre servicios y capas de abstraccion de hardware. Como encajan las piezas y por que.
[Leer la documentacion de Arquitectura](https://github.com/halo-ai-official/halo-ai/blob/main/docs/ARCHITECTURE.md)

### Servicios
Documentacion individual de cada servicio, incluyendo configuracion, dependencias, puertos y health checks para cada componente del stack.
[Leer la documentacion de Servicios](https://github.com/halo-ai-official/halo-ai/blob/main/docs/SERVICES.md)

### Seguridad
Modelo de amenazas, aislamiento de red, autenticacion y el principio de que nada sale de tu hardware a menos que tu lo autorices.
[Leer la documentacion de Seguridad](https://github.com/halo-ai-official/halo-ai/blob/main/docs/SECURITY.md)

### Solucion de Problemas
Problemas comunes, comandos de diagnostico, ubicacion de logs y procedimientos de recuperacion. Empieza aqui cuando algo falle.
[Leer la documentacion de Solucion de Problemas](https://github.com/halo-ai-official/halo-ai/blob/main/docs/TROUBLESHOOTING.md)

## Temas Avanzados

### VPN
Acceso remoto seguro a tu instancia de halo-ai. Red mesh entre maquinas sin exponer puertos.
[Leer la documentacion de VPN](https://github.com/halo-ai-official/halo-ai/blob/main/docs/VPN.md)

### Proteccion del Stack
Watchdogs de servicios, politicas de reinicio automatico, monitoreo de salud y los mecanismos que mantienen a halo-ai funcionando cuando las cosas se ponen feas.
[Leer la documentacion de Proteccion del Stack](https://github.com/halo-ai-official/halo-ai/blob/main/docs/STACK_PROTECTION.md)

### Blueprints
Definiciones declarativas de servicios para extender halo-ai con nuevas capacidades. Escribe un blueprint, colocalo en su lugar y el sistema hace el resto.
[Leer la documentacion de Blueprints](https://github.com/halo-ai-official/halo-ai/blob/main/docs/BLUEPRINTS.md)

### Pipeline Autonomo
Como los agentes de halo-ai se coordinan sin intervencion humana. Descomposicion de tareas, seleccion de agentes, ejecucion y puertas de calidad.
[Leer la documentacion del Pipeline Autonomo](https://github.com/halo-ai-official/halo-ai/blob/main/docs/AUTONOMOUS_PIPELINE.md)

*Disenado y construido por el arquitecto.*
