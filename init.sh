#!/bin/bash

echo "================================================="
echo "       🚀 INICIANDO PROYECTO COMPLETO (DEV)      "
echo "================================================="

# 1. Iniciar la infraestructura
./init_containers.sh

# 2. Iniciar las aplicaciones
./init_microservices.sh

echo "================================================="
echo "✅ SISTEMA LISTO. Verifique logs para el estado final."