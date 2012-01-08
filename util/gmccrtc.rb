#!/usr/bin/env ruby

# GMCCRTC - create LightZone Raw Tone Curve from GretagMacbeth Color Checker
#
# Version: 1.0 January 7, 2012
# Author: Doug Pardee
# License: Public Domain
#
# This script is a specialized version of a script that takes uncorrected
# values observed in an image and the associated desired values, then
# produces an RGB ZoneMapper that performs that conversion.
#
# Typical usage:
# 
# Obtain a Raw image containing a GretagMacbeth ColorChecker chart. The
# usual source is Imaging Resource.
#
# Open that Raw image in LightZone, without any Raw Tone Curve. Add a
# B&W tool and a Blur tool, and set the blur radius somewhere around 10.
#
# With the upper-right display window set to Sampler, move the cursor over
# the various squares of the chart and write down the Luminosity
# values (displayed in the upper-right of the Q13 chart) for each square
# from from left-to-right and top-to-bottom.
#
# Run this script supplying those values. Route the output to a file;
# the output is a fully-formed Raw Tone Curve.
#
# Example:
# gmccrtc.rb 18 59 30 21 38 68 53 19 32 11 69 69 10 38 21 96 32 31 152 97 59 30 14 5 > somefile.lzt
#
# Rename the output file as appropriate:
#     CameraDefault;CAMERA EXIF ID IN CAPS.lzt
# and move it into your Templates directory.
#
# Re-open the test image in LightZone and verify that the Raw Tone Curve
# was picked up. If not, check the lightzone.log file to see if you got
# the filename wrong.
#
# Optional but recommended: remove redundant control points. This script
# produces control point settings for all 15 intermediate points, and
# that's usually unnecessary. Pick a control point that looks like it's
# not changing anything and click the "X" to delete it while watching the
# picture. If the picture doesn't change noticeably, you can leave that
# point out. If the picture *does* change, Undo (Ctrl-Z) to put the
# control point back. Control points at the top are often jammed together,
# and you may need to remove the excess ones using a text editor.
#
# Re-add the B&W tool and the Blur tools with radius 10 or so.
# Verify that the Q13 chart is now reasonably close to the theoretical 
# values. Tweak the Raw Tone Curve as necessary -- you'll need to unlock
# it first, and you should re-lock it when you're done.

from_levels = []
to_levels = []

# Conversion from luminosity (0-1) to level (0-16)
def level(lumin)
  Math.log(lumin.to_f) * 2.0 / Math.log(2.0) + 16.0
end

# Conversion from level (0-16) to luminosity (0-1)
def lumin(level)
  2.0 ** ((level.to_f - 16.0) / 2.0)
end

# Linear interpolation
def interp(level,from_level1,from_level2,to_level1,to_level2)
  frac = (level.to_f - from_level2.to_f) / (from_level1.to_f - from_level2.to_f)
  (to_level1.to_f - to_level2.to_f) * frac + to_level2.to_f
end

# Determine output level
def output(level,from_levels,to_levels)
  if level > from_levels[0]
    interp(level,16,from_levels[0],16,to_levels[0])
  elsif level >= from_levels[23]
    high = 0
    low = 23
    for x in 0..23
      if from_levels[x] > 0.0 && level < from_levels[x]
        high = x
      elsif from_levels[x] > 0.0 && low > 22 && level > from_levels[x]
        low = x
      end
    end
    interp(level,from_levels[high],from_levels[low],to_levels[high],to_levels[low])
  else
    interp(level,from_levels[16],0,to_levels[16],0)
  end
end

index = [19,  7, 15, 16,  9,  5,
          8, 18, 12, 21,  3,  4,
         22, 10, 17,  1, 11, 14,
          0,  2,  6, 13, 20, 23]

# Get input levels
if ARGV.length == 24
  for x in 0..23
    from_levels[index[x]] = level(ARGV[x].to_f / 254.0)
  end
else
  print "Usage: #{$0} [24 levels]\n"
  exit
end

# Kludge up any increases in input
for x in 1..23
  if from_levels[x] > from_levels[x-1]
    from_levels[x] = from_levels[x-1]
  end
end

targets = [0.103, 0.354, 0.185, 0.133, 0.233, 0.418,
           0.311, 0.114, 0.199, 0.064, 0.444, 0.436,
           0.057, 0.230, 0.126, 0.607, 0.200, 0.189,
           0.909, 0.585, 0.357, 0.191, 0.089, 0.032]

# Get desired output levels
for x in 0..23
  to_levels[index[x]] = level(targets[x])
end

for x in 0..23
#  print "#{x} #{from_levels[x]} -> #{to_levels[x]}\n"
end

# Print conversion template
print <<EOF
<Template version="6">
  <Scale Factor="0.2548291"/>
  <Image path=""/>
  <Controls>
    <ZoneOperation Locked="true" Active="true" Collapsed="true" Mode="Normal" Name="RAW Tone Curve" Opacity="100" regionsInverted="false" scale="0">
      <Points Size="16">
EOF

for x in 1..15
  level = output(x,from_levels,to_levels)
  target = (level.to_f*100000.0/16.0).round / 100000.0
  print "        <Point X=\"#{x}\" Y=\"#{target}\"/>\n"
end

print <<EOF
      </Points>
    </ZoneOperation>
    <Region/>
    <Crop Angle="0.0"/>
  </Controls>
</Template>
EOF
