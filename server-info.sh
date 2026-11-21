#!/bin/bash
# Static parameters of a Debian/Ubuntu server: system, CPU, RAM, disk.
# Only reads local info, sends nothing over the network.
# Run on the server: bash server-info.sh

echo "=== System ==="
. /etc/os-release
echo "OS:      $PRETTY_NAME"
echo "Kernel:  $(uname -r)"
echo "Virt:    $(systemd-detect-virt)"   # kvm = real VM; lxc/openvz = container
echo "Uptime:  $(uptime -p)"

echo
echo "=== CPU ==="
lscpu | grep "Model name"
echo "Cores:   $(nproc)"

echo
echo "=== RAM ==="
free -h

echo
echo "=== Disk ==="
df -h /
