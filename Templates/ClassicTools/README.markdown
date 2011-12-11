# Classic LZ tools and classic versions of LZ tools

LightZone has had some tools that it no longer includes in the tool bar.
These tools still exist in the code, though,
and can be used via these styles.
Not all of these are particularly useful, but here they are.

* Channel Mixer -- this is a conversion to black-and-white
that uses the well-known channel-mixing approach.
The channel sliders provide ranges that run from -2 to +2,
give more leverage than the color wheel on the modern B&W tool does.

* Hi Pass Filter -- this sharpening tool operates by boosting smaller details.
The Radius slider determines the size of the details.
At lower settings it won't find much detail that small.
At higher settings the smaller detail gets mixed in with larger detail.
A value of about 0.700 gives the most selected detail,
but that's not necessarily what you want.

* Classic Relight -- this older version of the Relight tool uses a different
approach, especially in response to the Shadows and Highlights sliders.
It seems to be particularly valuable for handling images
with an extremely wide tonal range
-- especially images with problematic highlights --
and LZ still uses it for that purpose in the
Polarizer and the High Dynamic Range styles.
LZ also uses this version in the Soft Wow style.

* Tone Mapper -- this appears to be
the classic darkroom "contrast mask" operation
plus a Detail slider which allows control of the effect on midtone areas.
At Detail=0, this control is almost identical
to the Contrast Mask tool at the same settings.
The LightZone version uses Soft Light as the default blend mode,
while the classic contrast masking technique uses Overlay blend mode.
The Overlay blend mode can be used to give a stronger result.
The Soft Dodge blend mode can sometimes be used to give an extreme result,
as can Color Dodge with a fairly high Gamma setting.

* Contrast Mask -- this appears to be
the classic darkroom "contrast mask" operation.
The only apparent advantage over the later Tone Mapper
is the ability to use Radius values below 100
to give a more "flat lighting" effect.
The LightZone version uses Soft Light as the default blend mode,
while the classic contrast masking technique uses Overlay blend mode.
The Overlay blend mode can be used to give a stronger result.
The Soft Dodge blend mode can sometimes be used to give an extreme result,
as can Color Dodge with a fairly high Gamma setting.

* Classic Color Balance -- this tool seems to do about the same thing
as the current Color Balance tool,
but uses R/G/B sliders rather than the color wheel.
It doesn't seem to have nearly as much range as the modern version.

* Classic NR -- this older version of the Noise Reduction tool
provides more controls.
Whether it's any more effective than the current version is a different matter.

* Classic HSL -- this older version of the Hue/Saturation tool
doesn't have the Vibrance slider.
It's not clear that there's any special merit to using this tool.

## License

The licensing of these files is unclear.
It seems a reasonable assumption that they're covered
under the LightZone license.

Channel Mixer, Tone Mapper, Classic HSL, and Classic NR
were posted to the old LightZone forum
by Jacek Góźdź on May 3, 2007.

Classic Relight is based on the Polarizer style shipped with LightZone.

Hi Pass Filter, Classic Color Balance, and Contrast Mask were recreated.
