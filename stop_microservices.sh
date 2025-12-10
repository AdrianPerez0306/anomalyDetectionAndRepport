#!/bin/bash

echo -e "\n"
echo "==============================================="
echo "🛑 Deteniendo procesos de Spring Boot DevTools..."
# El comando pkill -f busca y termina cualquier proceso que contenga 'spring-boot:run',
# lo que detiene tus 4 microservicios sin afectar otros programas Java.
pkill -f 'spring-boot:run'

if [ $? -eq 0 ]; then
    echo -e "\n"
    echo "==============================================="
    echo "✅ Procesos de Spring Boot detenidos."
else
    echo -e "\n"
    echo "==============================================="
    echo "⚠️ Advertencia: No se encontraron procesos de Spring Boot activos o ya estaban detenidos."
fi