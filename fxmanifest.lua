fx_version 'cerulean'
game 'gta5'

name 'whip_media_clothing_male'
author 'Whippy'
description 'whip\'s clothing pictures for the character editor: the male body.'
version '1.0.0'
lua54 'yes'

-- A MEDIA PACK. whip's pictures, videos and map live apart from whip_core, because a player's game downloads each
-- resource as ONE file, and again in full whenever anything inside it changes, and whip_core changes often. One pack
-- per category, at most 256 MB each (Josh, 30 Oct 2026), so a change to one category is downloaded again for that
-- pack alone. whip_core never names a pack: its shared/assets_index.lua (made by whip_core/dev/assets_index.mjs from
-- the packs' folders) says which holds what. Run that again after moving files between packs.
--
-- Packs start before or after whip_core, in any order (`ensure [whip]` starts them all). Restarting one never touches
-- gameplay: restart it to send players pictures added since its last start.
whip_media_pack 'yes'   -- how whip_core's dev tools find the packs, wherever they are in [whip]

-- Saves pictures for whip_core (FXServer lets a resource write only into its own folder). The same file in every media
-- pack. Server only: players do not download it.
server_script 'server.lua'

files {
    -- The character editor's clothing pictures for the male freemode body (256 px WebP, quality 80). One per item
    -- and colour:
    --     img/clothing/male/<slot>/male_<slot no.>_<collection>_<item>_<colour>.webp
    -- named by GTA's own collection (the DLC an item came in: 'base', 'mp_m_vinewood', ...) and its number inside
    -- it, as whip_core's client/appearance.lua reads them (GetPedCollectionNameFromDrawable). Props are
    -- 'prop<slot>'. Added-on clothing has no picture and shows its number. The female body's are in
    -- whip_media_clothing_female.
    -- WHICH ITEMS HAVE ONE (both bodies) is whip_core's data/clothing-pictures.json, and the cards' names are
    -- whip_core's too (html/js/editor-names.js): so both still work when these pictures are not running. After
    -- adding, removing or renaming pictures in either, double-click "Rebuild clothing picture list.bat" in this
    -- folder, then restart this, whip_media_clothing_female and whip_core.
    -- One line per folder (a `*` in a folder name matches nothing).
    'img/clothing/male/00_head/*.webp',
    'img/clothing/male/01_masks/*.webp',
    'img/clothing/male/02_hair/*.webp',
    'img/clothing/male/03_arms_gloves/*.webp',
    'img/clothing/male/04_pants/*.webp',
    'img/clothing/male/05_bags/*.webp',
    'img/clothing/male/06_shoes/*.webp',
    'img/clothing/male/07_accessories/*.webp',
    'img/clothing/male/08_undershirts/*.webp',
    'img/clothing/male/09_vests_armour/*.webp',
    'img/clothing/male/10_decals/*.webp',
    'img/clothing/male/11_tops/*.webp',
    'img/clothing/male/p0_hats/*.webp',
    'img/clothing/male/p1_glasses/*.webp',
    'img/clothing/male/p2_ears/*.webp',
    'img/clothing/male/p6_watches/*.webp',
    'img/clothing/male/p7_bracelets/*.webp',
}
