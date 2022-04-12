# Bafwiz-Updater: Semi-Automatic Mod Updater
A simple script that took me far too long to write, that once set up, should be be able to detect and then update Minecraft mods when placed in the `.minecraft` folder.
## Currently, here's what it does:
* Downloads the required packwiz dependencies, automatically selecting the correct version for Linux and macOS.
* Creates a backup of the `mods` folder, just in case something goes wrong.
* Creates a new pack on each game launch that overwrites the previous one.
* Automatically detects and updates most installed mods.
## DISCLAIMER: Currently this doesn't work for whatever reason :<
Dear smarter people, please help me fix this because I actually think it could be quite cool!
## Why doesn't it work?
For whatever reason, packwiz doesn't seem to want to 'download' from a locally owned `pack.toml` file.
