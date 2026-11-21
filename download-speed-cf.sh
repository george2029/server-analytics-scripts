#!/bin/bash
# Download speed from Cloudflare's nearest edge (50 MB).
. "$(dirname "$0")/utils/to-mbps.sh"

speed=$(curl -s -o /dev/null -w "%{speed_download}" "https://speed.cloudflare.com/__down?bytes=50000000")
echo "Download, Cloudflare (nearby):   $(to_mbps "$speed")"
