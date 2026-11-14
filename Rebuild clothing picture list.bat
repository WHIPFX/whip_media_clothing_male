@echo off
rem Double-click after adding, removing or renaming clothing pictures (img\clothing here and in whip_media_clothing_female).
rem It rewrites whip_core\data\clothing-pictures.json, the list of which clothing items have a picture (the
rem character editor leaves out the ones without). Then restart whip_media_clothing_male, whip_media_clothing_female
rem and whip_core: whip_core reads the new list then.
rem whip_core is looked for one, two and three folders up: beside this pack, or two or three folders up when the packs
rem are in [assets] or [assets]\[media].
set "CORE="
for %%D in ("%~dp0.." "%~dp0..\.." "%~dp0..\..\..") do if not defined CORE if exist "%%~D\whip_core\dev\clothing_pictures.js" set "CORE=%%~D\whip_core"
if not defined CORE (
    echo whip_core was not found near this folder.
    echo.
    pause
    exit /b 1
)
node "%CORE%\dev\clothing_pictures.js"
echo.
pause
