Select your language: English / [Français](https://github.com/Grima04/exagear-cache-creator/blob/main/README-FR.md) / [Deutsch](https://github.com/Grima04/exagear-cache-creator/blob/main/README-DE.md)
# ExaGear cache creator tool
ExaGear cache creator - easily setup a custom ExaGear .obb cache that fits your needs with this small script.

## What is this tool and what does it do?
This tool is made of 2 small scripts which mostly automate the creation of .obb caches for the ExaGear Windows Emulator application on Android. The tool automates the chroot process to set up the Ubuntu file system required by ExaGear, installs Wine and some patches needed by ExaGear and packages the files in a .obb file ready to use on your phone with ExaGear.

## What features does the tool currently offer?
Currently the following options are offered:
* Choice between an Ubuntu 16.04 and Ubuntu 18.04 rootfs
* Choice between Wine devel and Wine stable versions
* User defined version of Wine: Wine 3.0 to 6.0 for Wine stable and Wine 3.10 to 6.6 for Wine devel
* Support for importing custom libraries such as libGL.so.1

## What is currently working?
* At the moment the cache creation with Ubuntu 18.04 is fully supported, Ubuntu 16.04 is still having some problems with the Wine dependencies and the Wine mirrors for Ubuntu 16.04 are not fully implemented yet.
* This software has only been tested on an Ubuntu 16.04 x86_64 computer, don't expect any support for other operating systems. It should however still work fine on Ubuntu 18.04, Ubuntu 20.04 or other Debian based distros (no guarantee given though).

## Instructions:
* First, install debootstrap on your system, download the entire project as a .zip and extract it somewhere you want.
* Afterwards, navigate to the libs folder from the project files (where you extracted the zip) and place the libs that you want to use with their full folder tree inside. For example: if you want to use a custom libGL library (e.g.: virgl), then your file tree should look as follows: **your-project-extraction-location/libs/usr/lib/i386-linux-gnu/libGL.so.1**
* Next, make the exagear-create-cache.sh executable with **chmod +x exagear-create-cache.sh** and launch the exagear-create-cache.sh script with sudo and follow the instructions given in the terminal: **sudo ./exagear-create-cache.sh**
* You will have the option to choose between Ubuntu 18.04 and 16.04 (**Please only use 18.04 for now**), Wine devel or stable and a specific Wine version.
* If everything works as planned, you should now have a .obb cache file ready to use inside the obb-cache folder.
* Finally, copy that .obb to your phone to the following directory: **/storage/emulated/0/Android/obb/com.eltechs.ed/**
* Now you are ready to launch ExaGear with your custom cache.
* **NB: I am not responsible for any damage, harm, file losses, etc. caused to your device and/or you and computer when using this software. Use at your own risks.**

## Additional information:
* Please notify me via the issues tab if you encounter any problems when installing a specific version of Wine. It will most probably be a typo in the Wine mirrors, so you could also try to fix it yourself if you want.
