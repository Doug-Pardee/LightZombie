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
On Windows, there's a `LightZone\Templates` folder in your main documents folder.

**==>** If you need a Raw Tone Curve file for a camera model that isn't here,
please submit a request in the
[Issue Tracker](https://github.com/Doug-Pardee/LightZombie/issues).
There are a lot of camera models that need Raw Tone Curves,
but a limited number of LightZone licensees left.
Do let us know there's a need for a particular camera profile.

**About specific profiles:**

* Canon 60D : custom-created
* Canon 600D : copy of Canon 60D profile
* Canon Kiss X : copy of Canon 400D profile
* Canon Kiss X2 : copy of Canon 450D profile
* Canon Kiss X3 : copy of Canon 500D profile
* Canon Kiss X4 : copy of Canon 550D profile
* Canon Kiss X5 : copy of Canon 600D profile
* Canon XSi : copy of Canon 450D profile
* Canon T3i : copy of Canon 600D profile
* Olympus E-5 : custom-created
* Panasonic LX5 : custom-created
* Pentax K-r : copy of Pentax K-X profile

Developers:

The pre-existing profiles can be found in the `lightzone.jar` file
that is part of the LightZone installation.
This file is simply a ZIP file.
The profiles are in the `com/lightcrafts/ui/editor/assoc/resources` folder
inside the `lightzone.jar` ZIP file.
