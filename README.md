### Wallpapers

Links to wallpapers:
- [neochor](https://pixiv.perennialte.ch/artworks/131320800)
- [periwinkle](https://pixiv.perennialte.ch/artworks/133217100)
- [dechor](https://www.wallpaperflare.com/7-anohana-wallpaper-pjaod)
- [browser startpage](walls/homepage.png)

For more walls I use, visit:
[my pixiv bookmarks](https://pixiv.perennialte.ch/users/65694311?category=bookmarks)

---

### Extra configs

Various extra configurations can be found here in their respective directories
unless mentioned otherwise. Installation instructions are provided below.

```sh
# premake folders for proper symlinks
for i in  usr/lib/elogind/system-sleep etc/tlp.d; do
    mkdir -p "/$i"
done

# clone assets branch
git clone -b assets --single-branch \
    https://codeberg.org/oceanicc/petrichor $HOME/.local/share/petrichor-assets
(cd $HOME/.local/share/petrichor-assets && doas sym -t / .)
```
---

**Optional**: Configuring autologin with greetd

```sh
sed "s/REPLACEME/$USER/g" ./etc/greetd/config.toml > _
doas mv _ /etc/greetd/config.toml
git update-index --skip-worktree ./etc/greetd/config.toml
```

---

**Optional**: Using provided wallpapers

```sh
dir="${XDG_PICTURES_DIR:-$HOME/pics}"
mkdir -p "$dir"
cp -r ./walls "$dir"
mv "$dir/walls/homepage.png" ${XDG_CONFIG_HOME:-$HOME/.config/qutebrowser"
```

---

**Optional**: Installing backlight service (dinit)

Symlinking `backlight` to its dinit directory will not allow it to be autostarted by
dinit due to security measures. Instead, you must directly copy it into its directory

```sh
doas cp etc/dinit.d/backlight /etc/dinit.d/backlight
doas dinitctl enable backlight
```
