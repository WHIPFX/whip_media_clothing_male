# whip_media_clothing_male

The male body's clothing pictures for [WHIP](https://github.com/WHIPFX/txAdmin-recipe)'s character editor: 17,500
pictures, one per item and colour. The female body's are in
[whip_media_clothing_female](https://github.com/WHIPFX/whip_media_clothing_female).

It's one of WHIP's five media packs, which hold the pictures, videos and map that `whip_core` shows. They're kept apart
from whip_core so its updates stay small: a player downloads each pack once, and again only when that pack changes.

## Installation

WHIP's txAdmin recipe installs it in `resources/[assets]/[media]`.

By hand, put the `whip_media_clothing_male` folder in `resources/[assets]/[media]` and make sure `server.cfg` has
`ensure [assets]`. The packs start in any order, before or after `whip_core`. If one is missing or not started,
whip_core's setup report says so: type `whipsetup` in the server console.

On GTA V Enhanced, `set sv_resourceFileDownloadTimeout 600000` gives players on slow connections time to download
the packs. WHIP's Enhanced recipe writes it.

## Adding pictures

A picture is a 256 px WebP named after the item's GTA collection and its number in it:
`img/clothing/male/<slot>/male_<slot no.>_<collection>_<item>_<colour>.webp`. Add-on clothing has no picture, and the
editor shows its number.

After adding, removing or renaming pictures here or in whip_media_clothing_female, double-click
`Rebuild clothing picture list.bat` (it needs [Node.js](https://nodejs.org)). Then restart both clothing packs and
`whip_core`.

When you update the pack, copy out any pictures you added before you replace the folder.

## License

The pictures are made from Grand Theft Auto V and belong to Rockstar Games: WHIP's licence doesn't cover them and
gives no rights to them. The code (`fxmanifest.lua`, `server.lua`, `Rebuild clothing picture list.bat`) is WHIP's,
under the GNU LGPL 3.0: see `COPYING.LESSER`, and `COPYING` for the GPL 3.0 it builds on. See `NOTICE.md`, and
whip_core's `NOTICE.md` for the full notice.

WHIP is not affiliated with, endorsed or sponsored by Rockstar Games or Take-Two Interactive.
