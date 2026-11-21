#!/bin/bash
# Upload speed to Cloudflare (25 MB of zeros).
. "$(dirname "$0")/utils/to-mbps.sh"

speed=$(head -c 25000000 /dev/zero | curl -s -o /dev/null -w "%{speed_upload}" --data-binary @- https://speed.cloudflare.com/__up)
echo "Upload, Cloudflare:              $(to_mbps "$speed")"
