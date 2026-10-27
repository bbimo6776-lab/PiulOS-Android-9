#!/data/data/com.termux/files/usr/bin/bash

ROOT="$HOME/PiulOS-ROM"
REPORT="$ROOT/reports/PROJECT-STATUS.txt"

mkdir -p "$ROOT/reports"

{
  echo "===== PIULOS PROJECT STATUS ====="
  date
  echo
  echo "Target: Samsung Galaxy J2 Core SM-J260F"
  echo "Codename: j2corelte"
  echo "Target Android: 9 Pie"
  echo

  echo "===== STORAGE ====="
  df -h "$HOME"
  echo

  echo "===== FILE COUNTS ====="
  for d in device kernel boot system vendor tools docs reports backup; do
    printf "%-10s " "$d"
    find "$ROOT/$d" -type f 2>/dev/null | wc -l
  done

  echo
  echo "===== SOURCE STATUS ====="
  [ -d "$ROOT/.repo" ] \
    && echo "Android source checkout: PRESENT" \
    || echo "Android source checkout: MISSING"

  [ -d "$ROOT/kernel/source" ] \
    && echo "Kernel source directory: PRESENT" \
    || echo "Kernel source directory: MISSING"

  [ -d "$ROOT/vendor/samsung/j2corelte/proprietary" ] \
    && echo "Vendor directory: PRESENT" \
    || echo "Vendor directory: MISSING"

  echo
  echo "A directory or README does not prove source completeness."
  echo "No flashable ROM is claimed by this script."
} > "$REPORT"

cat "$REPORT"
echo
echo "Saved report: $REPORT"
