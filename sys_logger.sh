#!/bin/bash
LOG_FILE="system_history.log"

{ 
echo "==================================="
echo "Log Entry: $(date)"
echo "-----------------------------------"

echo "1.Disk Usage:"
df -h | grep "^/dev/"
echo ""

echo "2.Memory Usage:"
lscpu | grep "Model name"
echo ""

echo "3. CPU Info:"
    lscpu | grep "Model name"
    echo ""


echo "4: Connectivity Check:"
if curl -I -s --connect-timeout 3 https://www.google.com > /dev/null
then 
echo "Status:Connected"
else 
echo "Status: Disconnected"
fi
echo "===================================="
echo ""
} >> "$LOG_FILE"

echo "Success! System stats have been saved to $LOG_FILE"

