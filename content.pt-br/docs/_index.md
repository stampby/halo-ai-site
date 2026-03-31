---
title: "Documentação"
description: "Documentação técnica da plataforma halo-ai. Arquitetura, serviços, segurança e guias operacionais."
---


Tudo que você precisa para entender, operar e estender o halo-ai.

## Documentação Principal

### Arquitetura
A arquitetura completa do sistema: 33 serviços, 17 agentes, comunicação entre serviços e camadas de abstração de hardware. Como as peças se encaixam e por quê.
[Leia a documentação de Arquitetura](https://github.com/halo-ai-official/halo-ai/blob/main/docs/ARCHITECTURE.md)

### Serviços
Documentação individual de cada serviço cobrindo configuração, dependências, portas e verificações de saúde para cada componente da stack.
[Leia a documentação de Serviços](https://github.com/halo-ai-official/halo-ai/blob/main/docs/SERVICES.md)

### Segurança
Modelo de ameaças, isolamento de rede, autenticação e o princípio de que nada sai do seu hardware a menos que você mande.
[Leia a documentação de Segurança](https://github.com/halo-ai-official/halo-ai/blob/main/docs/SECURITY.md)

### Solução de Problemas
Problemas comuns, comandos de diagnóstico, localizações de logs e procedimentos de recuperação. Comece aqui quando algo quebrar.
[Leia a documentação de Solução de Problemas](https://github.com/halo-ai-official/halo-ai/blob/main/docs/TROUBLESHOOTING.md)

## Tópicos Avançados

### VPN
Acesso remoto seguro à sua instância do halo-ai. Rede mesh entre máquinas sem expor portas.
[Leia a documentação de VPN](https://github.com/halo-ai-official/halo-ai/blob/main/docs/VPN.md)

### Proteção da Stack
Watchdogs de serviço, políticas de reinício automático, monitoramento de saúde e os mecanismos que mantêm o halo-ai vivo quando as coisas saem dos trilhos.
[Leia a documentação de Proteção da Stack](https://github.com/halo-ai-official/halo-ai/blob/main/docs/STACK_PROTECTION.md)

### Blueprints
Definições declarativas de serviço para estender o halo-ai com novas capacidades. Escreva um blueprint, coloque na pasta, e o sistema faz o resto.
[Leia a documentação de Blueprints](https://github.com/halo-ai-official/halo-ai/blob/main/docs/BLUEPRINTS.md)

### Pipeline Autônomo
Como os agentes do halo-ai se coordenam sem intervenção humana. Decomposição de tarefas, seleção de agentes, execução e portões de qualidade.
[Leia a documentação do Pipeline Autônomo](https://github.com/halo-ai-official/halo-ai/blob/main/docs/AUTONOMOUS_PIPELINE.md)

*Projetado e construido pelo arquiteto.*
