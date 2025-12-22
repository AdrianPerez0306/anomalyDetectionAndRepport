#!/bin/bash

echo -e "\n"
echo "====================================================================="
echo "🐳 Iniciando contenedores de infraestructura (Kafka y PostgreSQL)..."
echo "====================================================================="
# Levanta los servicios Zookeeper, Kafka y Database en modo detached (-d)
docker compose up -d zookeeper kafka database

echo -e "\n"
echo "============================================="
if [ $? -eq 0 ]; then
    echo "✅ Infraestructura iniciada correctamente."
else
    echo "❌ Error al iniciar la infraestructura Docker. Verifique los logs."
fi
echo "============================================="
# El 'sleep' es crucial para darle tiempo a Kafka y PostgreSQL para inicializar antes de conectar las apps Java.
# echo "⏳ Esperando 15 segundos para inicialización de servicios..."
# sleep 15