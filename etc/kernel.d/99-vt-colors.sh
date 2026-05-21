#!/bin/sh
# set vt-colors using reclr

printf "reclr: Setting vt-colors...\n"
colors=$(/usr/local/bin/reclr -i mystbloom -k)
for kver in "$@"; do
    f="/boot/loader/entries/chimera-${kver}.conf"
    [ -f "$f" ] || continue
    sed "s/^options .*/& $colors/" "$f" > "${f}_"
    mv "${f}_" "$f"
done
