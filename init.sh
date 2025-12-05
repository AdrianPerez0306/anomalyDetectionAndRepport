#!/bin/bash

echo "================================================="
echo "       🚀 INICIANDO PROYECTO COMPLETO (DEV)      "
echo "================================================="

# 1. Iniciar la infraestructura
./start_containers.sh

# 2. Iniciar las aplicaciones
./start_microservices.sh

echo "================================================="
echo "✅ SISTEMA LISTO. Verifique logs para el estado final."