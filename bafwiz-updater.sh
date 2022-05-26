#!/bin/bash
## Please enter your Minecraft Version, Mod loader type, and its version below. Please use lowercase when possible.
mc_ver=0.0.0 # Enter the number of your Minecraft version (e.g. 1.18.2).
loader=modloader # Enter the name of your modloader (e.g. fabric).
loader_ver=0.0.0 # Enter the number of your modloader version (e.g. 0.13.3).
pack_path=/path/to/pack.toml # Please place the file path of the "pack.toml" file.
## Downloads packwiz the required bootstrap ting for Linux/Mac OS (untested). Please manually chmod (make executable) the "packwiz" file.
if [[ $OSTYPE == 'linux'* ]]; then
curl -O -C - https://raw.githubusercontent.com/Regular-Baf/Bafwiz-Updater/main/repo/linux/packwiz
wait
else
echo Sorry, we either could not recognise your operating system, or it is currently not supported.
fi
curl -O -C - https://raw.githubusercontent.com/Regular-Baf/Bafwiz-Updater/main/repo/packwiz-installer-bootstrap.jar
wait
## Automatically determine some variable or another.
if [ "$loader" == fabric ]; then
loader2=fabric-version
elif [ "$loader" == quilt ]; then
loader2=quilt-version
elif [ "$loader" == forge ]; then
loader2=forge-version
elif [ "$loader" == liteloader ]; then
loader2=liteloader-version
else
echo Loader unknown. Please review the Bafwiz-Updater script for errors.
fi
## Just in case something dodgy happens, this script creates a backup of the mods folder!
mkdir mods-backup
rm mods-backup/*
cp mods/* mods-backup
wait
## This is where the magic happens.
./packwiz init --name bafwiz-updater --author Regular_Baf --version updates --mc-version $mc_ver --modloader $loader --$loader2 $loader_ver -r
wait
./packwiz cf detect
wait
echo 'y' | ./packwiz update -a
wait
## Restore mods in the mods folder to prevent redownloading of each one.
cp mods-backup/* mods
wait
"$INST_JAVA" -jar packwiz-installer-bootstrap.jar file://$pack_path
## java -jar packwiz-installer-bootstrap.jar file://$pack_path
wait
## Hide the .toml metadata files.
mkdir mods/metadata
wait
mv mods/*.toml mods/metadata
