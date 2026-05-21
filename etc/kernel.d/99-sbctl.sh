#!/bin/sh
# sign all kernels (secureboot)

printf "sbctl: Signing kernels...\n"
for kver in "$@"; do
    sbctl sign -s "/boot/vmlinuz-${kver}"
done
