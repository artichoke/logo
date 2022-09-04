# macOS .icns

Create an `.icns` file suitable for being an app icon or a DMG icon on macOS.

## Creation Workflow

```conosole
$ mkdir macOS-icns
$ # export artichoke-icon.png from Inkscape.
$ input_filepath="macOS-icns/artichoke-icon.png"
$ output_iconset_name="macOS-icns/Artichoke.iconset"
$ mkdir "$output_iconset_name"
$ sips -z 16 16     $input_filepath --out "${output_iconset_name}/icon_16x16.png"
/Users/lopopolo/dev/artichoke/logo/macOS-icns/artichoke-icon.png
  /Users/lopopolo/dev/artichoke/logo/macOS-icns/Artichoke.iconset/icon_32x32.png
$ sips -z 32 32     $input_filepath --out "${output_iconset_name}/icon_16x16@2x.png"
/Users/lopopolo/dev/artichoke/logo/macOS-icns/artichoke-icon.png
  /Users/lopopolo/dev/artichoke/logo/macOS-icns/Artichoke.iconset/icon_32x32@2x.png
$ sips -z 32 32     $input_filepath --out "${output_iconset_name}/icon_32x32.png"
/Users/lopopolo/Downloads/artichoke-social-profile.png
  /Users/lopopolo/Downloads/Artichoke.iconset/icon_32x32.png
$ sips -z 64 64     $input_filepath --out "${output_iconset_name}/icon_32x32@2x.png"
/Users/lopopolo/Downloads/artichoke-social-profile.png
  /Users/lopopolo/Downloads/Artichoke.iconset/icon_32x32@2x.png
$ sips -z 128 128   $input_filepath --out "${output_iconset_name}/icon_128x128.png"
/Users/lopopolo/dev/artichoke/logo/macOS-icns/artichoke-icon.png
  /Users/lopopolo/dev/artichoke/logo/macOS-icns/Artichoke.iconset/icon_128x128.png
$ sips -z 256 256   $input_filepath --out "${output_iconset_name}/icon_128x128@2x.png"
/Users/lopopolo/dev/artichoke/logo/macOS-icns/artichoke-icon.png
  /Users/lopopolo/dev/artichoke/logo/macOS-icns/Artichoke.iconset/icon_128x128@2x.png
$ sips -z 256 256   $input_filepath --out "${output_iconset_name}/icon_256x256.png"
/Users/lopopolo/dev/artichoke/logo/macOS-icns/artichoke-icon.png
  /Users/lopopolo/dev/artichoke/logo/macOS-icns/Artichoke.iconset/icon_256x256.png
$ sips -z 512 512   $input_filepath --out "${output_iconset_name}/icon_256x256@2x.png"
/Users/lopopolo/dev/artichoke/logo/macOS-icns/artichoke-icon.png
  /Users/lopopolo/dev/artichoke/logo/macOS-icns/Artichoke.iconset/icon_256x256@2x.png
$ sips -z 512 512   $input_filepath --out "${output_iconset_name}/icon_512x512.png"
/Users/lopopolo/dev/artichoke/logo/macOS-icns/artichoke-icon.png
  /Users/lopopolo/dev/artichoke/logo/macOS-icns/Artichoke.iconset/icon_512x512.png
$ pushd "$output_iconset_name"
$ for i in *.png ; do pngcrush $i ; mv pngout.png $i ; done
  Recompressing IDAT chunks in icon_128x128.png to pngout.png
   Total length of data found in critical chunks            =      7631
   Best pngcrush method        =   7 (ws 15 fm 0 zl 9 zs 0) =      5487
CPU time decode 0.002116, encode 0.013345, other 0.000841, total 0.016507 sec
  Recompressing IDAT chunks in icon_128x128@2x.png to pngout.png
   Total length of data found in critical chunks            =     17937
   Best pngcrush method        =   7 (ws 15 fm 0 zl 9 zs 0) =     12596
CPU time decode 0.004538, encode 0.037813, other 0.000782, total 0.043512 sec
  Recompressing IDAT chunks in icon_16x16.png to pngout.png
   Total length of data found in critical chunks            =       438
   Best pngcrush method        =   7 (ws 11 fm 0 zl 9 zs 0) =       364
CPU time decode 0.000086, encode 0.000375, other 0.000419, total 0.000894 sec
  Recompressing IDAT chunks in icon_16x16@2x.png to pngout.png
   Total length of data found in critical chunks            =      1205
   Best pngcrush method        =   7 (ws 12 fm 0 zl 9 zs 0) =      1010
CPU time decode 0.000247, encode 0.000821, other 0.000515, total 0.001618 sec
  Recompressing IDAT chunks in icon_256x256.png to pngout.png
   Total length of data found in critical chunks            =     17937
   Best pngcrush method        =   7 (ws 15 fm 0 zl 9 zs 0) =     12596
CPU time decode 0.004114, encode 0.041082, other 0.000823, total 0.046333 sec
  Recompressing IDAT chunks in icon_256x256@2x.png to pngout.png
   Total length of data found in critical chunks            =     46276
   Best pngcrush method        =   7 (ws 15 fm 0 zl 9 zs 0) =     34961
CPU time decode 0.013604, encode 0.078483, other 0.000958, total 0.093684 sec
  Recompressing IDAT chunks in icon_32x32.png to pngout.png
   Total length of data found in critical chunks            =      1205
   Best pngcrush method        =   7 (ws 12 fm 0 zl 9 zs 0) =      1010
CPU time decode 0.000224, encode 0.000821, other 0.000435, total 0.001506 sec
  Recompressing IDAT chunks in icon_32x32@2x.png to pngout.png
   Total length of data found in critical chunks            =      3179
   Best pngcrush method        =   7 (ws 14 fm 0 zl 9 zs 0) =      2475
CPU time decode 0.000521, encode 0.002859, other 0.000490, total 0.003935 sec
  Recompressing IDAT chunks in icon_512x512.png to pngout.png
   Total length of data found in critical chunks            =     46276
   Best pngcrush method        =   7 (ws 15 fm 0 zl 9 zs 0) =     34961
CPU time decode 0.011684, encode 0.074858, other 0.000754, total 0.087847 sec
$ iconutil -c icns Artichoke.iconset
```
