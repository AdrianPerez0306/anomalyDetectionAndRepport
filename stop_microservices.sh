#!/bin/bash

echo "🛑 Deteniendo procesos de Spring Boot DevTools..."
# Mata cualquier proceso de Java que contenga la cadena 'spring-boot:run'
pkill -f 'spring-boot:run'

if [ $? -eq 0 ]; then
    echo "✅ Procesos de Spring Boot detenidos."
fi