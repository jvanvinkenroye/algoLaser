#!/usr/bin/env bash
set -euo pipefail

show_help() {
  cat << EOF
MkDocs Runner für AlgoLaser

USAGE: ./mkdocs-runner.sh [COMMAND]

COMMANDS:
  serve       Startet den Entwicklungsserver (http://localhost:8000)
  build       Bauen die statische Website (output: site/)
  install     Installiert MkDocs und Abhängigkeiten
  clean       Löscht site/ und Cache
  help        Zeigt diese Hilfe

EXAMPLES:
  ./mkdocs-runner.sh serve
  ./mkdocs-runner.sh build
  ./mkdocs-runner.sh install
EOF
}

install_mkdocs() {
  echo "📦 Installiere MkDocs und Material Theme..."
  uv add mkdocs mkdocs-material --dev
  echo "✅ Installation abgeschlossen"
}

serve_docs() {
  echo "🚀 Starte MkDocs Entwicklungsserver..."
  echo "📍 Öffne: http://localhost:8000"
  uv run mkdocs serve
}

build_docs() {
  echo "🔨 Baue statische Website..."
  uv run mkdocs build
  echo "✅ Website gebaut in: ./site/"
}

clean_docs() {
  echo "🧹 Räume auf..."
  rm -rf site/
  rm -rf .mkdocs/
  echo "✅ Aufgeräumt"
}

main() {
  local cmd="${1:-serve}"

  case "$cmd" in
    serve)
      serve_docs
      ;;
    build)
      build_docs
      ;;
    install)
      install_mkdocs
      ;;
    clean)
      clean_docs
      ;;
    help|--help|-h)
      show_help
      ;;
    *)
      echo "❌ Unbekannter Befehl: $cmd"
      echo ""
      show_help
      exit 1
      ;;
  esac
}

main "$@"
