# Bafwiz-Updater: Semi-Automatic Mod Updater
A simple script that took me far too long to write, that once set up, should be be able to detect and then update Minecraft mods when placed in the `.minecraft` folder. Simply put, this just automates certain functions of packwiz to allow mod updating to just work without much user input, as opposed to the traditional packwiz approach. 

Currently it works on Linux using the PolyMC launcher, but it may work on macOS too. I'm not quite sure. As for the vanilla launcher, I also think it could be made to work but, again, I'm not quite sure.
## Currently, here's what it does:
* Downloads the required packwiz dependencies, automatically selecting the correct version for Linux and macOS.
* Creates a backup of the `mods` folder, just in case something goes wrong.
* Creates a new pack on each game launch that overwrites the previous one, which should allow mods to be added and removed within the launcher.
* Automatically detects and updates most installed mods.
* Hides mod metadata files to keep the `mods` folder clean.
## DISCLAIMER: It works and it's kinda awesome :>
Why not [download it here](https://raw.githubusercontent.com/Regular-Baf/Bafwiz-Updater/main/bafwiz-updater.sh) and give it a try? *You may have to `chmod` it several times for some reason though.*
