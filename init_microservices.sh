#!/bin/bash

echo -e "\n"
echo "==============================================="
echo "🚀 Iniciando Microservicios de Desarrollo (con DevTools)..."
echo "==============================================="
# Definir la lista de carpetas de microservicios
SERVICES=("entrypoint-service" "anomaly-detector-service" "persistence-service" "batch-processing-service")

for SERVICE in "${SERVICES[@]}"; do
    echo -e "\n"
    echo "==============================================="
    echo "-> Levantando $SERVICE..."
    echo "==============================================="

    cd $SERVICE
    
    nohup mvn spring-boot:run > $SERVICE.log 2>&1 &

    echo "==============================================="
    echo "-> Service: $SERVICE comenzo correctamente."
    echo "==============================================="
    echo -e "\n"

    cd ..

done

echo -e "\n"
echo "==============================================="
echo "✅ Todos los microservicios están en proceso de inicio."