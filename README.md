# AlgoLaser

Ressourcen für algorithmische Generierung und Laser-Design.

## Installation & Verwendung

### Mit MkDocs Runner

Das Projekt enthält ein Bash-Script für häufige MkDocs-Operationen:

```bash
# MkDocs und Dependencies installieren
./mkdocs-runner.sh install

# Entwicklungsserver starten
./mkdocs-runner.sh serve

# Website bauen (statische HTML)
./mkdocs-runner.sh build

# Aufräumen
./mkdocs-runner.sh clean

# Hilfe anzeigen
./mkdocs-runner.sh help
```

### Manuell mit uv

```bash
# Installation
uv add mkdocs mkdocs-material --dev

# Entwicklungsserver
uv run mkdocs serve

# Website bauen
uv run mkdocs build
```

Browser öffnen: `http://localhost:8000`

## Struktur

- `docs/` — Dokumentations-Dateien
  - `index.md` — Startseite
  - `links.md` — Ressourcen-Links
- `mkdocs.yml` — MkDocs-Konfiguration

## Inhalte

### Generatoren
- Bleeptrack Projekte (Beetlesbot, Overflower)
- 3D-Schneeflocken-Generator
- Lasercut Box-Design Tool

### Konverter
- BentoPDF (Online-PDF-Konverter)
- Vert.sh (CLI-Format-Konverter)
