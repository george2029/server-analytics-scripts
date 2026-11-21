#!/bin/bash
# Runs all the network tests one after another.
dir=$(dirname "$0")

bash "$dir/download-speed-cf.sh"
bash "$dir/download-speed-germany.sh"
bash "$dir/upload-speed-cf.sh"
bash "$dir/google-ai-api-connect-time.sh"
