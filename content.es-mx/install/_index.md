---
title: "Instalacion"
description: "Pon halo-ai a funcionar en tu hardware en minutos. Arch Linux, CachyOS, Ubuntu, Fedora."
---


halo-ai se instala con dos comandos. Sin contenedores, sin dependencias en la nube, sin telemetria. Todo corre en tu maquina.

## Requisitos

| Componente | Minimo | Recomendado |
|-----------|---------|-------------|
| RAM | 16 GB | 64 GB+ |
| GPU | AMD o NVIDIA (compatible con Vulkan) | AMD Radeon 8060S o superior |
| Almacenamiento | 20 GB libres | 50 GB+ (los modelos ocupan espacio) |
| SO | Linux (systemd) | Arch Linux / CachyOS |

## Distribuciones Soportadas

- **Arch Linux** -- soporte de primera clase, probado diariamente
- **CachyOS** -- basado en Arch, optimizado para rendimiento, totalmente compatible
- **Ubuntu 22.04+** -- soportado
- **Fedora 39+** -- soportado

## Inicio Rapido

```bash
git clone https://github.com/stampby/halo-ai.git
cd halo-ai
./install.sh
```

El instalador detecta tu hardware, configura la aceleracion por GPU, descarga los modelos y levanta los 33 servicios. En hardware AMD Strix Halo, el despliegue completo toma menos de diez minutos.

## Que Se Instala

halo-ai despliega 33 servicios interconectados que cubren inferencia, sintesis de voz, reconocimiento de habla, generacion de imagenes, analisis de codigo, monitoreo de seguridad y coordinacion autonoma de agentes. Cada servicio se administra a traves de systemd y puede iniciarse, detenerse o inspeccionarse individualmente.

## Optimizacion para AMD Strix Halo

El instalador aplica ajustes especificos de hardware para sistemas Strix Halo de forma automatica. Esto incluye seleccion del backend Vulkan, habilitacion de Flash Attention, estrategias de asignacion de memoria para LPDDR5x y perfiles de curvas de ventilador. Si estas corriendo en una maquina Strix Halo, halo-ai la encontrara y usara cada watt.

## Post-Instalacion

Despues de que termine la instalacion, abre tu navegador y ve a tu instancia local de halo-ai. El dashboard Man Cave estara esperandote.

Para solucion de problemas, detalles de arquitectura y documentacion de servicios, consulta el hub de [Documentacion](/docs/).

*Disenado y construido por el arquitecto.*
