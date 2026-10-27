#!/data/data/com.termux/files/usr/bin/bash
set -u

cd "$HOME/PiulOS-ROM" || exit 1

echo "===== PiulOS Project Verification ====="

for f in \
  device/j2corelte/BoardConfig.mk \
  device/j2corelte/device.mk \
  device/j2corelte/AndroidProducts.mk \
  device/j2corelte/piulos_j2corelte.mk \
  device/j2corelte/target.conf \
  docs/BUILD-CHECKLIST.md
do
    if [ -s "$f" ]; then
        echo "[OK] $f"
    else
        echo "[MISSING OR EMPTY] $f"
    fi
done

echo
echo "===== Prototype kernel ====="
if [ -f "$HOME/PiulOS/build/piulos.elf" ]; then
    file "$HOME/PiulOS/build/piulos.elf"
else
    echo "Prototype kernel not found"
fi

echo
echo "===== Available storage ====="
df -h "$HOME"

echo
echo "===== Build status ====="
echo "Android 9 source: not downloaded"
echo "Device-specific kernel: not built"
echo "System image: not built"
echo "Boot image: not built"
