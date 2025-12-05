#!/bin/bash

echo "🛑 Deteniendo contenedores de infraestructura..."

# Detiene y elimina los contenedores, pero mantiene los volúmenes (los datos de la DB)
docker compose down

if [ $? -eq 0 ]; then
    echo "✅ Infraestructura detenida correctamente."
else
    echo "❌ Error al detener la infraestructura Docker."
fi