# Helper, sourced by other scripts (not run on its own).
# curl reports speed in bytes per second; * 8 / 1000000 turns it into Mbit/s
to_mbps() {
  local bytes=${1%.*}   # drop decimals if curl printed any
  echo "$(( bytes * 8 / 1000000 )) Mbit/s"
}
