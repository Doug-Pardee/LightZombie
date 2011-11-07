# LightZone dcraw executable for Linux

Users:

This is the `dcraw` executable file for use with
LightZone 3.9 on Linux.

Rename the original `dcraw` file in your LightZone installation directory
and replace it with the one in this folder.

At the moment, the
[updated Linux dcraw](https://github.com/Doug-Pardee/LightZombie/raw/Unstable/dcraw/Linux/dcraw)
is unproven.
It should be considered somewhere between 'alpha' and 'beta' software.
If you don't need it for your current cameras,
you probably should stick with
[the original version](https://github.com/Doug-Pardee/LightZombie/raw/master/dcraw/Linux/Original/dcraw)
shipped with LZ 3.9.
Please report any problems through the Issue Tracker.

In the event of trouble,
the original LightZone 3.9 `dcraw` executable
can be found in the 'Original' folder
or just use the link above.

Developers:

The command line currently being used is:
`gcc -o dcraw -O4 dcraw.c -lm -g -DNODEPS -DLIGHTZONE`

New builds initially go into the 'Unstable' branch.
If no problems turn up after a reasonable amount of time,
they'll be merged into the 'master' branch.
