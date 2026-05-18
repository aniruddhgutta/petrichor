# petrichor

**petrichor** is a minimal `niri` setup utilising the bare minimum required to
keep it user friendly, functional and clean.

## Preview

![preview: neochor](../assets/previews/neochor-prev.webp?raw=true)
![preview: periwinkle](../assets/previews/periwinkle-prev.webp?raw=true)
![preview: dechor](../assets/previews/dechor-prev.webp?raw=true)

## Info

| Component | Value                                                        |
|-----------|--------------------------------------------------------------|
| Distro    | Chimera Linux                                                |
| WM        | niri                                                         |
| Bar       | Waybar                                                       |
| Run       | fuzzel                                                       |
| Notif     | fako                                                         |
| Term      | foot                                                         |
| Shell     | yash (optional: eza)                                         |
| Fetch     | [fetchy](https://codeberg.org/oceanicc/fetchy)               |
| Music     | rmpc/spotify                                                 |
| Browser   | qutebrowser/helium                                           |
| PDF       | zathura                                                      |
| Lock      | swaylock                                                     |
| Files     | yazi/nautilus                                                |
| Font      | cozette                                                      |
| Colors    | managed by [reclr](https://codeberg.org/oceanicc/reclr)      |
| Scripts   | `brightnessctl`, `playerctl`, `graphicsmagick`, `awww`, `jq` |

## Install

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
