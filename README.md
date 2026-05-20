# petrichor

**petrichor** is a minimal `niri` setup utilising the bare minimum required to
keep it user friendly, functional and clean.

## Preview

![preview: neochor](../assets/previews/neochor-prev.webp?raw=true)
![preview: periwinkle](../assets/previews/periwinkle-prev.webp?raw=true)
![preview: dechor](../assets/previews/dechor-prev.webp?raw=true)

## Info

| petrichor | utils                                                            |
|-----------|------------------------------------------------------------------|
| distro    | chimera linux                                                    |
| wm        | niri                                                             |
| bar       | waybar                                                           |
| run       | fuzzel                                                           |
| wall      | awww                                                             |
| record    | wl-screenrec                                                     |
| notif     | fako                                                             |
| term      | foot                                                             |
| shell     | yash (optional: eza)                                             |
| fetch     | [fetchy](https://codeberg.org/oceanicc/fetchy)                   |
| music     | rmpc/spotify                                                     |
| browser   | qutebrowser/helium                                               |
| pdf       | zathura                                                          |
| lock      | swaylock                                                         |
| files     | yazi/nautilus                                                    |
| font      | cozette                                                          |
| colors    | managed by [reclr](https://codeberg.org/oceanicc/reclr)          |
| scripts   | brightnessctl, playerctl, graphicsmagick, slurp, jq              |
| waybar    | wiremix, impala, bluetuith, btop                                 |
| optional  | tlp, tuigreet                                                    |

**NOTE** - Configurations for utilities like `tlp` can be found in the [assets branch](../assets).

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
