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
unless mentioned otherwise. To use them, either:

a) copy them directly to their respective directories

b) if `assets` is cloned to a separate folder, symlink as shown: `doas sym -t / .`

---

## NOTES
- Symlinking `backlight` to its dinit directory will not allow it to be autostarted by
dinit due to security measures. Instead, you must directly copy it into its directory

```sh
doas cp etc/dinit.d/backlight /etc/dinit.d/backlight
doas dinitctl enable backlight
```
