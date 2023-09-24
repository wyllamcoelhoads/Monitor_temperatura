#!/bin/bash

# Defina o caminho para o arquivo de log
LOG_FILE="/home/william-coelho/Documents/MTEMP/temperatura.log"
# Defina o intervalo em segundos (exemplo: 10 segundos)
INTERVAL=10

# Loop infinito para monitorar a temperatura
while true; do
    # Execute o comando 'sensors' e anexe a saída ao arquivo de log
    sensors >> "$LOG_FILE"
    echo "-----------------------END/START----------------------" >> "$LOG_FILE"
    echo $(date "+%Y-%m-%d %H:%M:%S") >> "$LOG_FILE"
    # Espere pelo intervalo especificado
    sleep $INTERVAL
done
