---
title: "Instalação"
description: "Coloque o halo-ai pra rodar no seu hardware em minutos. Arch Linux, CachyOS, Ubuntu, Fedora."
---


O halo-ai instala com dois comandos. Sem containers, sem dependências de nuvem, sem telemetria. Tudo roda na sua máquina.

## Requisitos

| Componente | Mínimo | Recomendado |
|------------|--------|-------------|
| RAM | 16 GB | 64 GB+ |
| GPU | AMD ou NVIDIA (compatível com Vulkan) | AMD Radeon 8060S ou superior |
| Armazenamento | 20 GB livres | 50 GB+ (modelos vão usar espaço) |
| SO | Linux (systemd) | Arch Linux / CachyOS |

## Distribuições Suportadas

- **Arch Linux** -- suporte de primeira classe, testado diariamente
- **CachyOS** -- baseado no Arch, otimizado para performance, totalmente compatível
- **Ubuntu 22.04+** -- suportado
- **Fedora 39+** -- suportado

## Início Rápido

```bash
git clone https://github.com/stampby/halo-ai.git
cd halo-ai
./install.sh
```

O instalador detecta seu hardware, configura aceleração de GPU, baixa os modelos e levanta todos os 33 serviços. Em hardware AMD Strix Halo, a implantação completa leva menos de dez minutos.

## O Que é Instalado

O halo-ai implanta 33 serviços interconectados cobrindo inferência, síntese de voz, reconhecimento de fala, geração de imagens, análise de código, monitoramento de segurança e coordenação autônoma de agentes. Cada serviço é gerenciado pelo systemd e pode ser iniciado, parado ou inspecionado individualmente.

## Otimização para AMD Strix Halo

O instalador aplica ajustes específicos para sistemas Strix Halo automaticamente. Isso inclui seleção do backend Vulkan, habilitação de Flash Attention, estratégias de alocação de memória para LPDDR5x e perfis de curva de ventilação. Se você está rodando em uma máquina Strix Halo, o halo-ai vai encontrá-la e usar cada watt.

## Pós-Instalação

Após a instalação, abra seu navegador e acesse sua instância local do halo-ai. O painel Man Cave vai estar esperando.

Para solução de problemas, detalhes de arquitetura e documentação de serviços, veja o hub de [Documentação](/docs/).

*Projetado e construido pelo arquiteto.*
