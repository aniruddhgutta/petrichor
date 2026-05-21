#!/bin/sh
# set kernel-params

printf "setting kernel-params...\n"
for kver in "$@"; do
    f="/boot/loader/entries/chimera-${kver}.conf"
    [ -f "$f" ] || continue
    sed 's/^options .*/& nowatchdog nmi_watchdog=0/' "$f" > "${f}_"
    mv "${f}_" "$f"
done
