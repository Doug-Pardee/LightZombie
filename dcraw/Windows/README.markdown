# LightZone dcraw.exe executable for Windows

Users:

This [will be] the `dcraw.exe` executable file for use with
LightZone 3.9 on Windows.

Rename the original `dcraw.exe` file in your LightZone installation folder
and replace it with the one in this folder.

There might be a newer, but not fully tested, version in the 'Unstable' branch.

In the event of trouble,
the original LightZone 3.9 executable can be found in the 'Original' folder.

Developers:

Compilation is currently being done using MinGW.
The command line currently being used is:
`gcc -o dcraw -O4 dcraw.c -lm -g -DNODEPS -DLIGHTZONE -lws2_32`

New builds initially go into the 'Unstable' branch.
If no problems turn up after a reasonable amount of time,
they'll be merged into the 'master' branch.
