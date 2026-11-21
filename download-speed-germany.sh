#!/bin/bash
# Download speed from Hetzner in Nuremberg, Germany (100 MB).
. "$(dirname "$0")/utils/to-mbps.sh"

speed=$(curl -s -o /dev/null -w "%{speed_download}" https://nbg1-speed.hetzner.com/100MB.bin)
echo "Download, Germany (abroad):      $(to_mbps "$speed")"
