#!/bin/bash

echo "🚀 Iniciando Microservicios de Desarrollo (con DevTools)..."

# Definir la lista de carpetas de microservicios
SERVICES=("ingress-service" "detector-service" "persistence-service" "batch-service")

for SERVICE in "${SERVICES[@]}"; do
    echo "-> Levantando $SERVICE..."
    cd $SERVICE
    # Ejecuta en segundo plano, redireccionando la salida a un archivo de log
    nohup mvn spring-boot:run > $SERVICE.log 2>&1 &
    cd ..
done

echo "✅ Todos los microservicios están en proceso de inicio."