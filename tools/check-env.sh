#!/data/data/com.termux/files/usr/bin/bash
set -eu

echo "=== PiulOS Build Environment ==="
uname -m

for tool in clang ld.lld make git python file cpio gzip xz dtc; do
    if command -v "$tool" >/dev/null 2>&1; then
        printf '[OK] %s\n' "$tool"
    else
        printf '[MISSING] %s\n' "$tool"
    fi
done

echo
echo "=== Free storage ==="
df -h "$HOME"

echo
echo "=== Project directories ==="
for dir in boot kernel system device vendor tools build backup docs; do
    if [ -d "$dir" ]; then
        printf '[OK] %s/\n' "$dir"
    else
        printf '[MISSING] %s/\n' "$dir"
    fi
done
