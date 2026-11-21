#!/bin/bash
# Disk write speed: writes a 1 GB file in the current folder, then deletes it.
echo "=== Disk write speed (1 GB test file) ==="
# oflag=direct skips the RAM cache, so this measures the real disk
dd if=/dev/zero of=./disk-test.tmp bs=1M count=1024 oflag=direct 2>&1 | tail -n 1
rm -f ./disk-test.tmp
