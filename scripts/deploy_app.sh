#!/usr/bin/env bash
set -euo pipefail

# Variables - reemplaza si no usas secrets
RESOURCE_GROUP="rg-node-mysql"
APP_NAME="mi-app-node-123"
ZIP_FILE="app.zip"

echo "Instalando dependencias y preparando paquete..."
npm install
# Build si aplica (ajusta)
if [ -f package.json ]; then
  if jq -r '.scripts.build' package.json >/dev/null 2>&1; then
    npm run build || true
  fi
fi

# Crear zip (incluye sólo lo necesario)
rm -f ${ZIP_FILE}
zip -r ${ZIP_FILE} package.json server.js src node_modules || true

echo "Autenticando en Azure (debes haber hecho 'az login' o usar SP en CI)..."
az account show >/dev/null

echo "Deploy zip al App Service ${APP_NAME}..."
az webapp deployment source config-zip --resource-group ${RESOURCE_GROUP} --name ${APP_NAME} --src ${ZIP_FILE}

echo "Despliegue finalizado. URL: https://${APP_NAME}.azurewebsites.net"