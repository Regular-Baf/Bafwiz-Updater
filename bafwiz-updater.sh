#!/bin/bash
## Please enter your Minecraft Version, Mod loader type, and its version below. Please use lowercase when possible.
mc_ver=1.18.2
loader=fabric
loader_ver=0.13.2
## Downloads packwiz the required bootstrap ting for Linux/Mac OS (untested). Please manually chmod (make executable) the "packwiz" file.
if [[ $OSTYPE == 'linux'* ]]; then
curl -O -C - https://raw.githubusercontent.com/Regular-Baf/Bafwiz-Updater/main/repo/linux/packwiz
wait
elif [[ $OSTYPE == 'darwin'* ]]; then
curl -O -C - https://raw.githubusercontent.com/Regular-Baf/Bafwiz-Updater/main/repo/macwiz/packwiz
wait
chmod +x ./packwiz
else
echo Sorry, we either could not recognise your operating system, or it is currently not supported.
fi
curl -O -C - https://raw.githubusercontent.com/Regular-Baf/Bafwiz-Updater/main/repo/packwiz-installer-bootstrap.jar
wait
## Automatically determine some variable or another.
if [ "$loader" == fabric ]; then
loader2=fabric-version
elif [ "$loader" == forge ]; then
loader2=forge-version
elif [ "$loader" == liteloader ]; then
loader2=liteloader-version
else
echo Loader unknown. Please review the Bafwiz-updater script for errors.
fi
## Just in case something dodgy happens, this script creates a backup of the mods folder!
mkdir mods-backup
rm mods-backup/*
cp mods/* mods-backup
wait
## This is where the magic happens.
./packwiz init --name bafwiz-updater --author Baf/PolyMC --version updates --mc-version $mc_ver --modloader $loader --$loader2 $loader_ver -r
wait
./packwiz cf detect --mods-folder mods-metadata
wait
echo 'y' | ./packwiz update -a
wait
mv pack.toml index.toml wa/
wait
## "$INST_JAVA" -jar packwiz-installer-bootstrap.jar file://wa/pack.toml
java -jar packwiz-installer-bootstrap.jar file://wa/pack.toml
