# LightZone dcraw executable for Mac

Users:

This is the `dcraw` executable file for use with
LightZone 3.9.2 on Mac.

Rename the original `dcraw` file in your
LightZone.app/Contents/Resources/Java folder
and replace it with the one in this folder.
Then you'll probably need to do a `chmod +x dcraw` to make it executable.
If you don't know how to do the chmod,
[this link](http://macosx.com/forums/1511177-post2.html)
might help.

At the moment, the
[updated Mac dcraw](https://github.com/Doug-Pardee/LightZombie/raw/master/dcraw/Mac/dcraw)
seems to be working okay,
but it should be considered 'beta' software.
If you don't need it for your current cameras,
you probably should stick with
[the original version](https://github.com/Doug-Pardee/LightZombie/raw/master/dcraw/Mac/Original/dcraw)
shipped with LZ 3.9.2.
Please report any problems through the Issue Tracker.

In the event of trouble,
the original LightZone 3.9.2 `dcraw` executable
can be found in the 'Original' folder
or just use the link above.

Developers:

New builds initially go into the 'Unstable' branch.
If no problems turn up after a reasonable amount of time,
they'll be merged into the 'master' branch.

## License

dcraw is licensed under GPL (the GNU General Public License).
See the comments at the beginning of the dcraw.c source code for details.
