# macOS .icns

Create an `.icns` file suitable for being an app icon or a DMG icon on macOS.

## Creation Workflow

```conosole
$ mkdir macOS-icns
$ # export artichoke-icon.png from Inkscape.
$ input="macOS-icns/artichoke-icon.png"
$ input_filepath="macOS-icns/artichoke-icon-rounded.png"
$ convert -size 1024x1024 xc:none -fill white -draw 'roundRectangle 0,0 1024,1024 100,100' "$input" -compose SrcIn -composite "$input_filepath"
$ output_iconset_name="macOS-icns/Artichoke.iconset"
$ mkdir "$output_iconset_name"
$ sips -z 16 16     $input_filepath --out "${output_iconset_name}/icon_16x16.png"
sips -z 32 32     $input_filepath --out "${output_iconset_name}/icon_16x16@2x.png"
sips -z 32 32     $input_filepath --out "${output_iconset_name}/icon_32x32.png"
sips -z 64 64     $input_filepath --out "${output_iconset_name}/icon_32x32@2x.png"
sips -z 128 128   $input_filepath --out "${output_iconset_name}/icon_128x128.png"
sips -z 256 256   $input_filepath --out "${output_iconset_name}/icon_128x128@2x.png"
sips -z 256 256   $input_filepath --out "${output_iconset_name}/icon_256x256.png"
sips -z 512 512   $input_filepath --out "${output_iconset_name}/icon_256x256@2x.png"
sips -z 512 512   $input_filepath --out "${output_iconset_name}/icon_512x512.png"
/Users/lopopolo/dev/artichoke/logo/macOS-icns/artichoke-icon-rounded.png
  /Users/lopopolo/dev/artichoke/logo/macOS-icns/Artichoke.iconset/icon_16x16.png
/Users/lopopolo/dev/artichoke/logo/macOS-icns/artichoke-icon-rounded.png
  /Users/lopopolo/dev/artichoke/logo/macOS-icns/Artichoke.iconset/icon_16x16@2x.png
/Users/lopopolo/dev/artichoke/logo/macOS-icns/artichoke-icon-rounded.png
  /Users/lopopolo/dev/artichoke/logo/macOS-icns/Artichoke.iconset/icon_32x32.png
/Users/lopopolo/dev/artichoke/logo/macOS-icns/artichoke-icon-rounded.png
  /Users/lopopolo/dev/artichoke/logo/macOS-icns/Artichoke.iconset/icon_32x32@2x.png
/Users/lopopolo/dev/artichoke/logo/macOS-icns/artichoke-icon-rounded.png
  /Users/lopopolo/dev/artichoke/logo/macOS-icns/Artichoke.iconset/icon_128x128.png
/Users/lopopolo/dev/artichoke/logo/macOS-icns/artichoke-icon-rounded.png
  /Users/lopopolo/dev/artichoke/logo/macOS-icns/Artichoke.iconset/icon_128x128@2x.png
/Users/lopopolo/dev/artichoke/logo/macOS-icns/artichoke-icon-rounded.png
  /Users/lopopolo/dev/artichoke/logo/macOS-icns/Artichoke.iconset/icon_256x256.png
/Users/lopopolo/dev/artichoke/logo/macOS-icns/artichoke-icon-rounded.png
  /Users/lopopolo/dev/artichoke/logo/macOS-icns/Artichoke.iconset/icon_256x256@2x.png
/Users/lopopolo/dev/artichoke/logo/macOS-icns/artichoke-icon-rounded.png
  /Users/lopopolo/dev/artichoke/logo/macOS-icns/Artichoke.iconset/icon_512x512.png
$ pushd "$output_iconset_name"
$ for i in *.png ; do pngcrush $i ; mv pngout.png $i ; done
  Recompressing IDAT chunks in icon_128x128.png to pngout.png
   Total length of data found in critical chunks            =      8851
   Best pngcrush method        =   7 (ws 15 fm 0 zl 9 zs 0) =      6181
CPU time decode 0.001975, encode 0.013499, other 0.000706, total 0.016370 sec
  Recompressing IDAT chunks in icon_128x128@2x.png to pngout.png
   Total length of data found in critical chunks            =     19921
   Best pngcrush method        =   7 (ws 15 fm 0 zl 9 zs 0) =     13516
CPU time decode 0.004886, encode 0.032895, other 0.000794, total 0.038893 sec
  Recompressing IDAT chunks in icon_16x16.png to pngout.png
   Total length of data found in critical chunks            =       552
   Best pngcrush method        =   7 (ws 11 fm 0 zl 9 zs 0) =       495
CPU time decode 0.000120, encode 0.000394, other 0.000385, total 0.000916 sec
  Recompressing IDAT chunks in icon_16x16@2x.png to pngout.png
   Total length of data found in critical chunks            =      1508
   Best pngcrush method        =   7 (ws 13 fm 0 zl 9 zs 0) =      1259
CPU time decode 0.000256, encode 0.001196, other 0.000385, total 0.001876 sec
  Recompressing IDAT chunks in icon_256x256.png to pngout.png
   Total length of data found in critical chunks            =     19921
   Best pngcrush method        =   7 (ws 15 fm 0 zl 9 zs 0) =     13516
CPU time decode 0.004530, encode 0.032583, other 0.000567, total 0.037990 sec
  Recompressing IDAT chunks in icon_256x256@2x.png to pngout.png
   Total length of data found in critical chunks            =     45909
   Best pngcrush method        =   7 (ws 15 fm 0 zl 9 zs 0) =     30953
CPU time decode 0.014281, encode 0.088513, other 0.000730, total 0.104130 sec
  Recompressing IDAT chunks in icon_32x32.png to pngout.png
   Total length of data found in critical chunks            =      1508
   Best pngcrush method        =   7 (ws 13 fm 0 zl 9 zs 0) =      1259
CPU time decode 0.000326, encode 0.001231, other 0.000396, total 0.001989 sec
  Recompressing IDAT chunks in icon_32x32@2x.png to pngout.png
   Total length of data found in critical chunks            =      3827
   Best pngcrush method        =   7 (ws 15 fm 0 zl 9 zs 0) =      2921
CPU time decode 0.000725, encode 0.004439, other 0.000413, total 0.005654 sec
  Recompressing IDAT chunks in icon_512x512.png to pngout.png
   Total length of data found in critical chunks            =     45909
   Best pngcrush method        =   7 (ws 15 fm 0 zl 9 zs 0) =     30953
CPU time decode 0.015742, encode 0.089801, other 0.000916, total 0.107080 sec
$ popd
$ iconutil -c icns Artichoke.iconset
```
