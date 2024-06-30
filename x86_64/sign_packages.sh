#!/bin/bash

PACKAGE_DIR="."

for package in "$PACKAGE_DIR"/*.pkg.tar.zst; do
    if [ -f "$package" ]; then
        echo "Signing $package..."
        gpg --detach-sign -o "$package.sig" "$package"
    fi
done

echo "All packages signed."
