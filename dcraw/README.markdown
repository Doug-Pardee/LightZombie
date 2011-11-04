# dcraw README

Users:

**This is probably not the droid you're looking for.**
The downloadable executable files are in the
Windows, Mac, and Linux sub-folders.

Developers:

The `dcraw` module in LightZone is modified from
the standard versions provided by Dave Coffin.
The known differences are:

* A new parameter `-F <filename>` is provided for specifying the output filename.
* The `-i` (identify) option displays the camera's RGB matrix.
* The output color space is changed to have the same gamut and white point as ProPhoto but without any gamma.


There are two branches of interest.
The 'dcraw' branch contains original, unmodified sources of `dcraw.c`
as obtained [from Dave Coffin](http://www.cybercom.net/~dcoffin/dcraw/).
The 'master' branch contains the modified variants.

When a new version of `dcraw.c` comes out, update the 'dcraw' branch with it.
Then merge the 'dcraw' branch into the 'master' branch.
The resulting `dcraw.c` should be ready to compile for each platform.

Of some interest: LightZone's editor doesn't use `dcraw` for
demosaicing the image. It has its own demosaicing logic for that.
LZ does use `dcraw` demosaicing for the thumbnail and preview
images in the browser.

----------

**This file is licensed under GPL.**
