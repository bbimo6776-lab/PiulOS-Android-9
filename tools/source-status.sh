#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/PiulOS-ROM"

echo "===== SOURCE STATUS ====="

if [ -d "$ROOT/.repo" ]; then
  echo "Android source checkout directory: present; contents need verification"
else
  echo "Android source checkout: missing"
fi

if [ -d "$ROOT/kernel/source/.git" ]; then
  echo "Kernel Git checkout: present"
else
  echo "Kernel Git checkout: missing"
fi

if [ -d "$ROOT/device/samsung/j2corelte/.git" ]; then
  echo "Separate device-tree Git checkout: present"
else
  echo "Separate device-tree Git checkout: missing"
fi

if [ -d "$ROOT/vendor/samsung/j2corelte/proprietary" ]; then
  echo "Vendor directory: present; contents need verification"
else
  echo "Vendor components: not integrated"
fi

echo
echo "These checks do not establish source compatibility or build success."
