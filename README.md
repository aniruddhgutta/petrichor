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
- font: cozette
- colors are managed by [reclr](https://codeberg.org/oceanicc/reclr)
- script dependencies: brightnessctl, playerctl, graphicsmagick, awww, jq

---

## Setup Guide

To install (after installing all the programs listed above) -
```sh
for i in .cache/reclr .config .local/bin .local/share/fonts; do
  mkdir -p "$HOME/$i"
done

git clone https://codeberg.org/oceanicc/petrichor $HOME/.local/share/petrichor
(cd $HOME/.local/share/petrichor && ./sym -t "$HOME" .)

for i in reclr fetchy; do
  curl -fLO https://codeberg.org/oceanicc/$i/raw/branch/main/$i $HOME/.local/bin/$i
  chmod +x $HOME/.local/bin/$i
done

curl -fLO https://github.com/the-moonwitch/Cozette/releases/download/v.1.30.0/cozette_hidpi.otb $HOME/.local/share/fonts/cozette_hidpi.otb
```
