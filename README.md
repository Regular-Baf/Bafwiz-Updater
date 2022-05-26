# Bafwiz-Updater: Semi-Automatic Mod Updater
A simple script that took me far too long to write, that once set up, should be able to detect and then update Minecraft mods when placed in the `.minecraft` folder. Simply put, this just automates certain functions of packwiz to allow mod updating to just work without much user input, as opposed to the traditional packwiz approach.
## DISCLAIMER: Better things made by smarter people will exist soon; it's time to press F on this one.
Currently it works on Linux using the PolyMC launcher. As for the vanilla launcher, I also think it could be made to work but, again, I'm not quite sure.
## Currently, here's what it does:
* Downloads the required packwiz dependencies, automatically selecting the correct version for Linux and macOS.
* Creates a backup of the `mods` folder, just in case something goes wrong.
* Creates a new pack on each game launch that overwrites the previous one, which should allow mods to be added and removed within the launcher.
* Automatically detects and updates most installed mods.
* Hides mod metadata files to keep the `mods` folder clean.
## (PolyMC & Similar) How do I use it?
To configure, simply open the script in your favourite text editor (KWrite for me) and follow the instructions on the first few lines.

After configuration, simply place the script within your insance's `.minecraft`, grant it the executable permission using `chmod` or a similar tool, and then within PolyMC, set the wrapper command as `./bafwiz-updater.sh`.
```
sudo chmod +x bafwiz-updater.sh
```
**NOTE:** It will fail the first time. This is because you must also use `chmod` on the downloaded `packwiz` file. After this is done, it should work as expected.
```
sudo chmod +x packwiz
```
**OTHER NOTE:** For some reason, after first successful use within PolyMC, you may have to use `chmod` to grant executable permissions again on the updater script.

## OTHER DISCLAIMER: It works (mostly, please use at your own risk).
