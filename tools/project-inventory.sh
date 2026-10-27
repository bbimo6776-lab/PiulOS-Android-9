#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/PiulOS-ROM"

echo "===== PIULOS FILE INVENTORY ====="
find "$ROOT" -type f ! -path '*/.git/*' | sort

echo
echo "===== TOTAL FILES ====="
find "$ROOT" -type f ! -path '*/.git/*' | wc -l

echo
echo "===== PROJECT SIZE ====="
du -sh "$ROOT"

echo
echo "===== TOP-LEVEL FOLDER SIZES ====="
du -sh "$ROOT"/*/ 2>/dev/null | sort -h || true

echo
echo "===== FREE STORAGE ====="
df -h "$HOME"
