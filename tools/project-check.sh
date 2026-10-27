#!/data/data/com.termux/files/usr/bin/bash

set -u
cd "$HOME/PiulOS-ROM" || exit 1

echo "=== PiulOS Project Check ==="

for f in \
  device/j2corelte/AndroidProducts.mk \
  device/j2corelte/piulos_j2corelte.mk \
  device/j2corelte/BoardConfig.mk \
  device/j2corelte/target.conf \
  docs/BUILD-CHECKLIST.md
do
  if [ -f "$f" ]; then
    echo "[OK] $f"
  else
    echo "[MISSING] $f"
  fi
done

echo
echo "=== Available storage ==="
df -h "$HOME"

echo
echo "=== Current prototype ==="
file "$HOME/PiulOS/build/piulos.elf" 2>/dev/null || true

echo
echo "Status: configuration only; ROM not built."
