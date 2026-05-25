#!/bin/sh
# set kernel-params

params="nowatchdog nmi_watchdog=0 mitigations=off loglevel=3"

printf "setting kernel-params...\n"
for kver in "$@"; do
    f="/boot/loader/entries/chimera-${kver}.conf"
    [ -f "$f" ] || continue
    sed "s/^options .*/& $params/" "$f" > "${f}_"
    mv "${f}_" "$f"
done
