# Nautilus GCode Thumbnailer

Nautilus aka GNOME File Browser:

![](https://raw.githubusercontent.com/Spiritdude/Nautilus_Thumbnailer_GCode/master/imgs/screenshot.png)

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

![](https://raw.githubusercontent.com/Spiritdude/Nautilus_Thumbnailer_GCode/master/tests/cube.png)

