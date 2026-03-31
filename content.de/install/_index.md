---
title: "Installation"
description: "halo-ai in wenigen Minuten auf deiner Hardware zum Laufen bringen. Arch Linux, CachyOS, Ubuntu, Fedora."
---


halo-ai wird mit zwei Befehlen installiert. Keine Container, keine Cloud-Abhängigkeiten, keine Telemetrie. Alles läuft auf deiner Maschine.

## Anforderungen

| Komponente | Minimum | Empfohlen |
|------------|---------|-----------|
| RAM | 16 GB | 64 GB+ |
| GPU | AMD oder NVIDIA (Vulkan-fähig) | AMD Radeon 8060S oder besser |
| Speicher | 20 GB frei | 50 GB+ (Modelle brauchen Platz) |
| OS | Linux (systemd) | Arch Linux / CachyOS |

## Unterstützte Distributionen

- **Arch Linux** -- erstklassiger Support, täglich getestet
- **CachyOS** -- Arch-basiert, leistungsoptimiert, vollständig kompatibel
- **Ubuntu 22.04+** -- unterstützt
- **Fedora 39+** -- unterstützt

## Schnellstart

```bash
git clone https://github.com/stampby/halo-ai.git
cd halo-ai
./install.sh
```

Der Installer erkennt deine Hardware, konfiguriert GPU-Beschleunigung, lädt Modelle herunter und startet alle 33 Dienste. Auf AMD Strix Halo Hardware ist die vollständige Bereitstellung in unter zehn Minuten abgeschlossen.

## Was installiert wird

halo-ai stellt 33 vernetzte Dienste bereit, die Inferenz, Sprachsynthese, Spracherkennung, Bildgenerierung, Code-Analyse, Sicherheitsüberwachung und autonome Agentenkoordination abdecken. Jeder Dienst wird über systemd verwaltet und kann einzeln gestartet, gestoppt oder inspiziert werden.

## AMD Strix Halo Optimierung

Der Installer wendet hardwarespezifische Optimierungen für Strix Halo Systeme automatisch an. Das umfasst Vulkan-Backend-Auswahl, Flash Attention Aktivierung, Speicherzuweisungsstrategien für LPDDR5x und Lüfterkurvenprofile. Wenn du auf einer Strix Halo Maschine arbeitest, wird halo-ai sie finden und jedes Watt nutzen.

## Nach der Installation

Nach Abschluss der Installation öffne deinen Browser und navigiere zu deiner lokalen halo-ai Instanz. Das Man Cave Dashboard wartet bereits.

Für Fehlerbehebung, Architekturdetails und Dienstdokumentation siehe den [Dokumentations](/docs/)-Hub.

*Entworfen und gebaut vom Architekten.*
