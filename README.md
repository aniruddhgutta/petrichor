# petrichor

**petrichor** is a minimal niri setup utilising the bare minimum required to keep it user friendly, functional and clean.
More info will be added later.
![](../assets/previews/neochor-prev.webp?raw=true)
![](../assets/previews/periwinkle-prev.webp?raw=true)
![](../assets/previews/dechor-prev.webp?raw=true)

---

## Info -

- distro: chimera linux
- wm: niri
- bar: waybar
- run: fuzzel
- notif: mako
- term: foot
- shell: yash
- fetch: [fetchy](https://codeberg.org/oceanicc/fetchy)
- music: rmpc/spotify
- browser: qutebrowser/helium
- pdf viewer: zathura
- lock: swaylock
- files: yazi/nautilus
- font: personal fork of [gohu](https://github.com/aniruddhgutta/gohufont)
- colors are managed by [reclr](https://codeberg.org/oceanicc/reclr)
- script dependencies: brightnessctl, playerctl, graphicsmagick, swww, jq

---

## Setup Guide

To install (after installing all the programs listed above (including those linked)) -
```sh
git clone https://codeberg.org/oceanicc/petrichor
cd petrichor
xstow -t "$HOME" .  # same arguments with stow too
```
In the future I might write a tiny helper script for this, but for now `stow` or `xstow` work fine.

To uninstall (unstow) -
```sh
cd petrichor  # wherever you cloned it
xstow -t "$HOME" -D .
```

To use the provided wallpapers -
```sh
git switch assets
cp -r wallpapers/* ~/pics/walls/  # wherever you want to save them
git switch main
```
