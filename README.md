# AlgoLaser

Ressourcen für algorithmische Generierung und Laser-Design.

## Installation & Verwendung

### MkDocs starten

1. MkDocs installieren:
```bash
uv pip install mkdocs mkdocs-material
```

2. Entwicklungsserver starten:
```bash
uv run mkdocs serve
```

3. Browser öffnen: `http://localhost:8000`

### MkDocs bauen

Statische HTML-Seite generieren:
```bash
uv run mkdocs build
```

Die Website wird im `site/` Verzeichnis generiert.

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
