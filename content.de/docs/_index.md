---
title: "Dokumentation"
description: "Technische Dokumentation der halo-ai Plattform. Architektur, Dienste, Sicherheit und Betriebsanleitungen."
---


Alles, was du brauchst, um halo-ai zu verstehen, zu betreiben und zu erweitern.

## Kerndokumentation

### Architektur
Die vollständige Systemarchitektur: 33 Dienste, 17 Agenten, Kommunikation zwischen Diensten und Hardware-Abstraktionsschichten. Wie die Teile zusammenpassen und warum.
[Architektur-Dokumentation lesen](https://github.com/stampby/halo-ai/blob/main/docs/ARCHITECTURE.md)

### Dienste
Individuelle Dienstdokumentation mit Konfiguration, Abhängigkeiten, Ports und Gesundheitsprüfungen für jede Komponente im Stack.
[Dienste-Dokumentation lesen](https://github.com/stampby/halo-ai/blob/main/docs/SERVICES.md)

### Sicherheit
Bedrohungsmodell, Netzwerkisolierung, Authentifizierung und das Prinzip, dass nichts deine Hardware verlässt, es sei denn, du sagst es.
[Sicherheits-Dokumentation lesen](https://github.com/stampby/halo-ai/blob/main/docs/SECURITY.md)

### Fehlerbehebung
Häufige Probleme, Diagnosebefehle, Log-Speicherorte und Wiederherstellungsverfahren. Fang hier an, wenn etwas kaputt geht.
[Fehlerbehebungs-Dokumentation lesen](https://github.com/stampby/halo-ai/blob/main/docs/TROUBLESHOOTING.md)

## Fortgeschrittene Themen

### VPN
Sicherer Fernzugriff auf deine halo-ai Instanz. Mesh-Netzwerk zwischen Maschinen ohne offene Ports.
[VPN-Dokumentation lesen](https://github.com/stampby/halo-ai/blob/main/docs/VPN.md)

### Stack-Schutz
Dienst-Watchdogs, automatische Neustartrichtlinien, Gesundheitsüberwachung und die Mechanismen, die halo-ai am Laufen halten, wenn etwas schiefgeht.
[Stack-Schutz-Dokumentation lesen](https://github.com/stampby/halo-ai/blob/main/docs/STACK-PROTECTION.md)

### Blueprints
Deklarative Dienstdefinitionen zur Erweiterung von halo-ai mit neuen Fähigkeiten. Schreib einen Blueprint, leg ihn ab, und das System erledigt den Rest.
[Blueprints-Dokumentation lesen](https://github.com/stampby/halo-ai/blob/main/docs/BLUEPRINTS.md)

### Autonome Pipeline
Wie sich halo-ai Agenten ohne menschliches Eingreifen koordinieren. Aufgabenzerlegung, Agentenauswahl, Ausführung und Qualitätstore.
[Autonome Pipeline-Dokumentation lesen](https://github.com/stampby/halo-ai/blob/main/docs/AUTONOMOUS-PIPELINE.md)

*Entworfen und gebaut vom Architekten.*
