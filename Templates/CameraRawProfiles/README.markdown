# Raw profiles for new camera models

Users:

One of the features of LightZone is that it automatically applies
a ZoneMapper-type tool called a Raw Tone Curve
to Raw files from recognized cameras.
LightZone *can* process Raw files without a Raw Tone Curve for that camera,
but the result will tend to be somewhat on the dark side.

Here are some Raw Tone Curve files for cameras that weren't included
in LightZone 3.9.
Install the file(s) into your normal LightZone template folder.
On Windows,
there's a `LightZone\Templates` folder in your main documents folder.
On Macs,
there's a `LightZone/Templates` folder at `"Home"/Library/Application Support`.
On Linux,
there's a `Templates` directory in the LightZone installation directory.

**==>** If you need a Raw Tone Curve file for a camera model that isn't here,
please submit a request in the
[Issue Tracker](https://github.com/Doug-Pardee/LightZombie/issues).
There are a lot of camera models that need Raw Tone Curves,
but a limited number of LightZone licensees left.
Do let us know there's a need for a particular camera profile.

Developers:

The pre-existing profiles can be found in the `lightzone.jar` file
that is part of the LightZone installation.
This file is simply a ZIP file.
The profiles are in the `com/lightcrafts/ui/editor/assoc/resources` folder
inside the `lightzone.jar` ZIP file.

The correct file name can usually be determined by opening the Raw file,
then examining the LightZone log file.
LightZone will have a message there saying that it couldn't find the
tone curve file, and that message will give the exact name.
Another possibility is to use the
[Flickr Camera Finder](http://www.flickr.com/cameras/);
this is especially useful when dealing with cameras that have
multiple names for the same model (Canon and Pansonic like to do that).

Details on how to create a Raw Tone Curve can be found in the
[wiki](https://github.com/Doug-Pardee/LightZombie/wiki/ProjectRawToneCurves).