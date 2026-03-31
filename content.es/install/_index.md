---
title: "Instalación"
description: "Pon halo-ai en marcha en tu hardware en minutos. Arch Linux, CachyOS, Ubuntu, Fedora."
---


halo-ai se instala con dos comandos. Sin contenedores, sin dependencias en la nube, sin telemetría. Todo se ejecuta en tu máquina.

## Requisitos

| Componente | Mínimo | Recomendado |
|-----------|---------|-------------|
| RAM | 16 GB | 64 GB+ |
| GPU | AMD o NVIDIA (compatible con Vulkan) | AMD Radeon 8060S o superior |
| Almacenamiento | 20 GB libres | 50 GB+ (los modelos ocuparán espacio) |
| SO | Linux (systemd) | Arch Linux / CachyOS |

## Distribuciones compatibles

- **Arch Linux** -- soporte de primera clase, probado a diario
- **CachyOS** -- basado en Arch, optimizado en rendimiento, totalmente compatible
- **Ubuntu 22.04+** -- compatible
- **Fedora 39+** -- compatible

## Inicio rápido

```bash
git clone https://github.com/halo-ai-official/halo-ai.git
cd halo-ai
./install.sh
```

El instalador detecta tu hardware, configura la aceleración GPU, descarga los modelos y levanta los 33 servicios. En hardware AMD Strix Halo, el despliegue completo tarda menos de diez minutos.

## Qué se instala

halo-ai despliega 33 servicios interconectados que cubren inferencia, síntesis de voz, reconocimiento de habla, generación de imágenes, análisis de código, monitorización de seguridad y coordinación autónoma de agentes. Cada servicio se gestiona a través de systemd y puede iniciarse, detenerse o inspeccionarse individualmente.

## Optimización para AMD Strix Halo

El instalador aplica ajustes específicos de hardware para sistemas Strix Halo de forma automática. Esto incluye la selección del backend Vulkan, la activación de Flash Attention, estrategias de asignación de memoria para LPDDR5x y perfiles de curvas de ventilador. Si tu máquina es Strix Halo, halo-ai la encontrará y aprovechará cada vatio.

## Post-instalación

Una vez completada la instalación, abre tu navegador y accede a tu instancia local de halo-ai. El panel Man Cave estará esperándote.

Para resolución de problemas, detalles de arquitectura y documentación de servicios, consulta el hub de [Documentación](/docs/).

*Diseñado y construido por el arquitecto.*
