#!/bin/bash

echo "================================================="
echo "       🔴 DETENIENDO PROYECTO COMPLETO           "
echo "================================================="

# 1. Detener las aplicaciones Spring Boot (para terminar limpiamente)
./stop_microservices.sh

# 2. Detener la infraestructura Docker
./stop_containers.sh

echo "================================================="
echo "✅ SISTEMA DETENIDO."