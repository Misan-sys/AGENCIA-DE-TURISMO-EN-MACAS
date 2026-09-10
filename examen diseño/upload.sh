#!/usr/bin/env bash
set -e

REMOTE_URL="$1"
if [ -z "$REMOTE_URL" ]; then
  read -p "Introduce la URL remota (ej. https://github.com/usuario/repo.git): " REMOTE_URL
fi

if ! command -v git >/dev/null 2>&1; then
  echo "Git no está instalado." >&2
  exit 1
fi

echo "Iniciando git y subiendo al remoto: $REMOTE_URL"
git init
git add .
git commit -m "Proyecto: EcoMacas - sitio inicial" || true
git branch -M main
git remote remove origin 2>/dev/null || true
git remote add origin "$REMOTE_URL"
git push -u origin main
echo "Push completado. Revisa la URL en GitHub Pages para publicar."
