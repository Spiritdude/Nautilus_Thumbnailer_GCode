# Nautilus GCode Thumbnailer

Nautilus aka GNOME File Browser:

![](https://raw.githubusercontent.com/Spiritdude/Nautilus_Thumbnailer_GCode/master/imgs/screenshot.png)

It supports G-code for 3D printers sliced with Slic3r, Prusa Slicer and Cura.

## Requirements
- install PovRay `sudo apt -y install povray` and `(cd ~; ln -s /etc/povray/ .povray)`

## Download
```
% git clone https://github.com/Spiritdude/Nautilus_Thumbnailer_GCode
% cd Nautilus_Thumbnailer_GCode
```

## Install

```
% sudo make install
```

and restart Nautilus and then your .gcode will show up rendered in the preview.

## Clear Thumbnail Cache
```
% rm -rf ~/.cache/thumbnails/fail/
```
or also 
```
% rm -rf ~/.cache/thumbnails/
```

## gcode2png
You may use it also manually:
```
% gcode2png cube.gcode
```

![](https://raw.githubusercontent.com/Spiritdude/Nautilus_Thumbnailer_GCode/master/imgs/cube.png)

```
USAGE gcode2png 0.1.0: [<opts>] <file.gcode> ... 
   options:
      --version               print version and exit
      --autolevel             level Z minimum to 0 (default: off)
      --output=<fn>           override .gcode -> .png conversion
      --size=<w>x<h>          set size of image (default: 512x512)
      --rotate=<x>,<y>,<z>    rotate model (default: 30,0,-20)
      --dist=<d>              set distance multiplier (default: 1)
      --color=<r>,<g>,<b>     set color (default: .1,.8,.1)
      --grid=0 or 1           set grid (default: 1)
      --grid_size=<s>         set grid size (default: 10)
      --nozzle=<d>            set nozzle diameter (default: 0.4)
      --complete=<i>          set completeness: 0..1 or 0%..100%
      --timeout=<s>           set timeout of povray (default: 90)
      
   examples:
      gcode2png gcube.gcode
      gcode2png --output=cube-normal.png cube.gcode
      gcode2png --color=1,0,0 3DBenchy.gcode
      gcode2png --complete=50% 3DBenchy.gcode
      
```

![](https://raw.githubusercontent.com/Spiritdude/Nautilus_Thumbnailer_GCode/master/imgs/3DBenchy.png)

## See Also
- [STL Thumbnailer](https://github.com/Spiritdude/Nautilus_Thumbnailer_STL)

