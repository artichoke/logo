#!/usr/bin/env bash

set -euo pipefail

input="artichoke-icon.png"
input_filepath="artichoke-icon-rounded.png"

convert \
  -size 1024x1024 xc:none \
  -fill white \
  -draw 'roundRectangle 0,0 1024,1024 100,100' \
  "$input" \
  -compose SrcIn \
  -composite "$input_filepath"

pngcrush "$input_filepath"
mv pngout.png "$input_filepath"

output_iconset_name="Artichoke.iconset"
rm -rf "$output_iconset_name"
mkdir "$output_iconset_name"

sips -z 16 16 $input_filepath --out "${output_iconset_name}/icon_16x16.png"
sips -z 32 32 $input_filepath --out "${output_iconset_name}/icon_16x16@2x.png"
sips -z 32 32 $input_filepath --out "${output_iconset_name}/icon_32x32.png"
sips -z 64 64 $input_filepath --out "${output_iconset_name}/icon_32x32@2x.png"
sips -z 128 128 $input_filepath --out "${output_iconset_name}/icon_128x128.png"
sips -z 256 256 $input_filepath --out "${output_iconset_name}/icon_128x128@2x.png"
sips -z 256 256 $input_filepath --out "${output_iconset_name}/icon_256x256.png"
sips -z 512 512 $input_filepath --out "${output_iconset_name}/icon_256x256@2x.png"
sips -z 512 512 $input_filepath --out "${output_iconset_name}/icon_512x512.png"
sips -z 1024 1024 $input_filepath --out "${output_iconset_name}/icon_512x512@2x.png"

pushd "$output_iconset_name" >/dev/null

for img in *.png; do
  pngcrush "$img"
  mv pngout.png "$img"
done

popd >/dev/null

iconutil -c icns "$output_iconset_name"

echo "Iconset created at: $output_iconset_name"
