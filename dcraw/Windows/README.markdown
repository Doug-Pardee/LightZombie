# LightZone dcraw.exe executable for Windows

Users:

This is the `dcraw.exe` executable file for use with
LightZone 3.9 on Windows.

Rename the original `dcraw.exe` file in your LightZone installation folder
and replace it with the one in this folder.

At the moment, the
[updated Windows dcraw](https://github.com/Doug-Pardee/LightZombie/raw/Unstable/dcraw/Windows/dcraw.exe)
is unproven.
It should be considered somewhere between 'alpha' and 'beta' software.
If you don't need it for your current cameras,
you probably should stick with
[the original version](https://github.com/Doug-Pardee/LightZombie/raw/master/dcraw/Windows/Original/dcraw.exe)
shipped with LZ 3.9.
Please report any problems through the Issue Tracker.

In the event of trouble,
the original LightZone 3.9 `dcraw.exe` executable
can be found in the 'Original' folder
or just use the link above.

Developers:

Compilation is currently being done using MinGW.
The command line currently being used is:
`gcc -o dcraw -O4 dcraw.c -lm -g -DNODEPS -DLIGHTZONE -lws2_32`

New builds initially go into the 'Unstable' branch.
If no problems turn up after a reasonable amount of time,
they'll be merged into the 'master' branch.

## License

dcraw is licensed under GPL (the GNU General Public License).
See the comments at the beginning of the dcraw.c source code for details.
