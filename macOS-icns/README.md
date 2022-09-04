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

### Disk Image Icon

`Removable.png` is the largest disk image icon from
`/System/Library/Extensions/IOStorageFamily.kext/Contents/Resources/Removable.icns`.

```console
$ mogrify -matte -virtual-pixel transparent -distort Perspective "1,1 81.92,1 1024,1 942.08,1 1,1024 1,1024 1024,1024 1024,1024" -resize '602x575!' artichoke-icon.png
$ mogrify -matte -virtual-pixel transparent -distort Perspective "1,1 81.92,1 1024,1 942.08,1 1,1024 1,1024 1024,1024 1024,1024" -resize '602.35x575.28!' artichoke-disk-stamp.png
$ magick composite -gravity Center -geometry '+0-158.72' artichoke-disk-stamp.png Removable.png artichoke-dmg-icon.png
$ output_iconset_name=Artichoke-dmg.iconset
$ mkdir "$output_iconset_name"
$ input_filepath=artichoke-dmg-icon.png
$ sips -z 16 16     $input_filepath --out "${output_iconset_name}/icon_16x16.png"
sips -z 32 32     $input_filepath --out "${output_iconset_name}/icon_16x16@2x.png"
sips -z 32 32     $input_filepath --out "${output_iconset_name}/icon_32x32.png"
sips -z 64 64     $input_filepath --out "${output_iconset_name}/icon_32x32@2x.png"
sips -z 128 128   $input_filepath --out "${output_iconset_name}/icon_128x128.png"
sips -z 256 256   $input_filepath --out "${output_iconset_name}/icon_128x128@2x.png"
sips -z 256 256   $input_filepath --out "${output_iconset_name}/icon_256x256.png"
sips -z 512 512   $input_filepath --out "${output_iconset_name}/icon_256x256@2x.png"
sips -z 512 512   $input_filepath --out "${output_iconset_name}/icon_512x512.png"

/Users/lopopolo/dev/artichoke/logo/macOS-icns/artichoke-dmg-icon.png
  /Users/lopopolo/dev/artichoke/logo/macOS-icns/Artichoke-dmg.iconset/icon_16x16.png
/Users/lopopolo/dev/artichoke/logo/macOS-icns/artichoke-dmg-icon.png
  /Users/lopopolo/dev/artichoke/logo/macOS-icns/Artichoke-dmg.iconset/icon_16x16@2x.png
/Users/lopopolo/dev/artichoke/logo/macOS-icns/artichoke-dmg-icon.png
  /Users/lopopolo/dev/artichoke/logo/macOS-icns/Artichoke-dmg.iconset/icon_32x32.png
/Users/lopopolo/dev/artichoke/logo/macOS-icns/artichoke-dmg-icon.png
  /Users/lopopolo/dev/artichoke/logo/macOS-icns/Artichoke-dmg.iconset/icon_32x32@2x.png
/Users/lopopolo/dev/artichoke/logo/macOS-icns/artichoke-dmg-icon.png
  /Users/lopopolo/dev/artichoke/logo/macOS-icns/Artichoke-dmg.iconset/icon_128x128.png
/Users/lopopolo/dev/artichoke/logo/macOS-icns/artichoke-dmg-icon.png
  /Users/lopopolo/dev/artichoke/logo/macOS-icns/Artichoke-dmg.iconset/icon_128x128@2x.png
/Users/lopopolo/dev/artichoke/logo/macOS-icns/artichoke-dmg-icon.png
  /Users/lopopolo/dev/artichoke/logo/macOS-icns/Artichoke-dmg.iconset/icon_256x256.png
/Users/lopopolo/dev/artichoke/logo/macOS-icns/artichoke-dmg-icon.png
  /Users/lopopolo/dev/artichoke/logo/macOS-icns/Artichoke-dmg.iconset/icon_256x256@2x.png
/Users/lopopolo/dev/artichoke/logo/macOS-icns/artichoke-dmg-icon.png
  /Users/lopopolo/dev/artichoke/logo/macOS-icns/Artichoke-dmg.iconset/icon_512x512.png
$ pushd "$output_iconset_name"
$ for i in *.png ; do pngcrush $i ; mv pngout.png $i ; done
  Recompressing IDAT chunks in icon_128x128.png to pngout.png
   Total length of data found in critical chunks            =     20380
   Best pngcrush method        =   6 (ws 15 fm 6 zl 9 zs 0) =     16516
CPU time decode 0.004282, encode 0.142296, other 0.000852, total 0.147640 sec
  Recompressing IDAT chunks in icon_128x128@2x.png to pngout.png
   Total length of data found in critical chunks            =     73086
   Best pngcrush method        =   6 (ws 15 fm 6 zl 9 zs 0) =     57517
CPU time decode 0.011267, encode 0.575098, other 0.000762, total 0.587482 sec
  Recompressing IDAT chunks in icon_16x16.png to pngout.png
   Total length of data found in critical chunks            =       704
   Best pngcrush method        =   6 (ws 11 fm 6 zl 9 zs 0) =       737
CPU time decode 0.000292, encode 0.000695, other 0.000517, total 0.001523 sec
  Recompressing IDAT chunks in icon_16x16@2x.png to pngout.png
   Total length of data found in critical chunks            =      2036
   Best pngcrush method        =   6 (ws 13 fm 6 zl 9 zs 0) =      1911
CPU time decode 0.000429, encode 0.001519, other 0.000553, total 0.002560 sec
  Recompressing IDAT chunks in icon_256x256.png to pngout.png
   Total length of data found in critical chunks            =     73086
   Best pngcrush method        =   6 (ws 15 fm 6 zl 9 zs 0) =     57517
CPU time decode 0.011521, encode 0.575967, other 0.000906, total 0.588769 sec
  Recompressing IDAT chunks in icon_256x256@2x.png to pngout.png
   Total length of data found in critical chunks            =    293666
   Best pngcrush method        =  10 (ws 15 fm 6 zl 9 zs 1) =    235681
CPU time decode 0.040703, encode 1.481476, other 0.001131, total 1.524058 sec
  Recompressing IDAT chunks in icon_32x32.png to pngout.png
   Total length of data found in critical chunks            =      2036
   Best pngcrush method        =   6 (ws 13 fm 6 zl 9 zs 0) =      1911
CPU time decode 0.000471, encode 0.001619, other 0.000562, total 0.002699 sec
  Recompressing IDAT chunks in icon_32x32@2x.png to pngout.png
   Total length of data found in critical chunks            =      6276
   Best pngcrush method        =   6 (ws 15 fm 6 zl 9 zs 0) =      5474
CPU time decode 0.001569, encode 0.011810, other 0.000808, total 0.014283 sec
  Recompressing IDAT chunks in icon_512x512.png to pngout.png
   Total length of data found in critical chunks            =    293666
   Best pngcrush method        =  10 (ws 15 fm 6 zl 9 zs 1) =    235681
CPU time decode 0.037634, encode 1.486993, other 0.001181, total 1.526434 sec
$ iconutil -c icns "$output_iconset_name"
```
