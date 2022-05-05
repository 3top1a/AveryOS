<div align="center">
    <h1><code>💿 Avery OS</code></h1>
    <h2>My personal OS, for <i>Avery</i> situation</h2>
    <h3>and a starting point for yours.</h3>
</div>

## What's inside

This is build using `archiso`, you will need Arch to build it.

- `profiledef.sh` - General settings for the ISO
- `packages.x86_64` - Packages to be installed (**NOT AUR!**)
- `build.sh` - Script to build the ISO (**will take time**)
- `airootfs/root/customize_airootfs.sh` - script that gets run before every export
- `airootfs/etc/skel/` - default user directory
- `dist` - The work directory.
	- ***Be careful - always unmount before deletion it or you WILL delete your data***
- `out` - Locations of exported ISOs
- `syslinux` and `efiboot` - bootloaders for the live CD

## Installing

`git clone --recursive`

**NOTE: The `--recursive` is important!**

after that, just

`cd AveryOS`

and to compile

`./build.sh`

This will take a while (15-30 minutes)
