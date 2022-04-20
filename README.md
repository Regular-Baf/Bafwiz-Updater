# Bafwiz-Updater: Semi-Automatic Mod Updater
A simple script that took me far too long to write, that once set up, should be be able to detect and then update Minecraft mods when placed in the `.minecraft` folder.

Currently it works on Linux using the PolyMC launcher, but it may work on macOS too. I'm not quite sure.
## Currently, here's what it does:
* Downloads the required packwiz dependencies, automatically selecting the correct version for Linux and macOS.
* Creates a backup of the `mods` folder, just in case something goes wrong.
* Creates a new pack on each game launch that overwrites the previous one, which should allow mods to be added and removed within the launcher.
* Automatically detects and updates most installed mods.
* Hides mod metadata files.
## (PolyMC & Similar) How do I use it?
After configuration, simply place the script within your insance's `.minecraft`, grant it the executable permission using `chmod` or a similar tool, and then within PolyMC, set the wrapper command as `./bafwiz-updater.sh`.
```
sudo chmod +x bafwiz-updater.sh
```
**NOTE:** It will fail the first time. This is because you must also use `chmod` on the downloaded `packwiz` file. After this is done, it should work as expected.
```
sudo chmod +x packwiz
```
**OTHER NOTE:** For some reason, after first successful use within PolyMC, you may have to use `chmod` to grant executable permissions again on the updater script.

## DISCLAIMER: It works (mostly, please use at your own risk) and it's kinda awesome :>
Why not [download it here](https://raw.githubusercontent.com/Regular-Baf/Bafwiz-Updater/main/bafwiz-updater.sh) and give it a try?
