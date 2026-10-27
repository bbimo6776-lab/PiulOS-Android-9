#!/data/data/com.termux/files/usr/bin/bash
set -eu

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 /path/to/image"
    exit 2
fi

IMAGE="$1"

if [ ! -f "$IMAGE" ]; then
    echo "ERROR: File not found: $IMAGE"
    exit 1
fi

echo "=== Image information ==="
ls -lh "$IMAGE"
file "$IMAGE"
sha256sum "$IMAGE"
