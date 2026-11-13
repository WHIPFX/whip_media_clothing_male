@echo off
rem Double-click after adding, removing or renaming clothing pictures (img\clothing here and in whip_media_clothing_female).
rem It rewrites whip_core\data\clothing-pictures.json, the list of which clothing items have a picture (the
rem character editor leaves out the ones without). Then restart whip_media_clothing_male, whip_media_clothing_female
rem and whip_core: whip_core reads the new list then.
rem whip_core is beside this pack's folder, or one up when the packs are in [whip]\[assets].
set "CORE=%~dp0..\whip_core"
if not exist "%CORE%\dev\clothing_pictures.js" set "CORE=%~dp0..\..\whip_core"
node "%CORE%\dev\clothing_pictures.js"
echo.
pause
