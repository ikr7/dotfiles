#/bin/bash

output=$(nvidia-smi --query-gpu=temperature.gpu,utilization.gpu --format=csv,noheader,nounits)

temp=$(echo "$output" | cut -f1 -d,)
util=$(echo "$output" | cut -f2 -d' ')

message="GPU: ${temp}C, ${util}%"

echo "${message}"
echo "${message}"