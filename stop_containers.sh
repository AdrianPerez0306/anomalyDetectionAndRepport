#!/bin/bash

echo -e "\n"
echo "==============================================="
echo "🛑 Deteniendo contenedores de infraestructura..."

# 'docker compose down' detiene y elimina los contenedores y la red.
# NO incluye el flag -v, por lo que los volúmenes (datos de PostgreSQL) se conservan.
docker compose down

if [ $? -eq 0 ]; then
    echo -e "\n"
    echo "==============================================="
    echo "✅ Infraestructura detenida correctamente."
else
    echo -e "\n"
    echo "==============================================="
    echo "❌ Error al detener la infraestructura Docker. Verifique los logs."
fi