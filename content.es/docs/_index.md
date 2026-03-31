---
title: "Documentación"
description: "Documentación técnica de la plataforma halo-ai. Arquitectura, servicios, seguridad y guías operativas."
---


Todo lo que necesitas para entender, operar y ampliar halo-ai.

## Documentación principal

### Arquitectura
La arquitectura completa del sistema: 33 servicios, 17 agentes, comunicación entre servicios y capas de abstracción de hardware. Cómo encajan las piezas y por qué.
[Leer la documentación de Arquitectura](https://github.com/stampby/halo-ai/blob/main/docs/ARCHITECTURE.md)

### Servicios
Documentación individual de cada servicio, incluyendo configuración, dependencias, puertos y comprobaciones de salud para cada componente del stack.
[Leer la documentación de Servicios](https://github.com/stampby/halo-ai/blob/main/docs/SERVICES.md)

### Seguridad
Modelo de amenazas, aislamiento de red, autenticación y el principio de que nada sale de tu hardware a menos que tú lo ordenes.
[Leer la documentación de Seguridad](https://github.com/stampby/halo-ai/blob/main/docs/SECURITY.md)

### Resolución de problemas
Problemas comunes, comandos de diagnóstico, ubicaciones de logs y procedimientos de recuperación. Empieza aquí cuando algo falle.
[Leer la documentación de Resolución de problemas](https://github.com/stampby/halo-ai/blob/main/docs/TROUBLESHOOTING.md)

## Temas avanzados

### VPN
Acceso remoto seguro a tu instancia de halo-ai. Red mesh entre máquinas sin exponer puertos.
[Leer la documentación de VPN](https://github.com/stampby/halo-ai/blob/main/docs/VPN.md)

### Protección del stack
Watchdogs de servicios, políticas de reinicio automático, monitorización de salud y los mecanismos que mantienen halo-ai en pie cuando las cosas se tuercen.
[Leer la documentación de Protección del stack](https://github.com/stampby/halo-ai/blob/main/docs/STACK-PROTECTION.md)

### Blueprints
Definiciones declarativas de servicios para ampliar halo-ai con nuevas capacidades. Escribe un blueprint, colócalo en su sitio y el sistema hace el resto.
[Leer la documentación de Blueprints](https://github.com/stampby/halo-ai/blob/main/docs/BLUEPRINTS.md)

### Pipeline autónomo
Cómo los agentes de halo-ai se coordinan sin intervención humana. Descomposición de tareas, selección de agentes, ejecución y puertas de calidad.
[Leer la documentación del Pipeline autónomo](https://github.com/stampby/halo-ai/blob/main/docs/AUTONOMOUS-PIPELINE.md)

*Diseñado y construido por el arquitecto.*
