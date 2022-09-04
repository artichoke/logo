#!/usr/bin/env bash

set -euo pipefail

cp artichoke-icon-transparent.png artichoke-disk-stamp.png

mogrify \
  -matte \
  -virtual-pixel transparent \
  -distort Perspective "1,1 81.92,1 1024,1 942.08,1 1,1024 1,1024 1024,1024 1024,1024" \
  -resize '758.52x721.12!' \
  artichoke-disk-stamp.png

pngcrush artichoke-disk-stamp.png
mv pngout.png artichoke-disk-stamp.png

magick composite \
  -gravity Center \
  -geometry '+0-100' \
  artichoke-disk-stamp.png Removable.png artichoke-dmg-icon.png

pngcrush artichoke-dmg-icon.png
mv pngout.png artichoke-dmg-icon.png

output_iconset_name=Artichoke-dmg.iconset
rm -rf "$output_iconset_name"
mkdir "$output_iconset_name"

sips -z 16 16 artichoke-dmg-icon.png --out "${output_iconset_name}/icon_16x16.png"
sips -z 32 32 artichoke-dmg-icon.png --out "${output_iconset_name}/icon_16x16@2x.png"
sips -z 32 32 artichoke-dmg-icon.png --out "${output_iconset_name}/icon_32x32.png"
sips -z 64 64 artichoke-dmg-icon.png --out "${output_iconset_name}/icon_32x32@2x.png"
sips -z 128 128 artichoke-dmg-icon.png --out "${output_iconset_name}/icon_128x128.png"
sips -z 256 256 artichoke-dmg-icon.png --out "${output_iconset_name}/icon_128x128@2x.png"
sips -z 256 256 artichoke-dmg-icon.png --out "${output_iconset_name}/icon_256x256.png"
sips -z 512 512 artichoke-dmg-icon.png --out "${output_iconset_name}/icon_256x256@2x.png"
sips -z 512 512 artichoke-dmg-icon.png --out "${output_iconset_name}/icon_512x512.png"
sips -z 1024 1024 artichoke-dmg-icon.png --out "${output_iconset_name}/icon_512x512@2x.png"

pushd "$output_iconset_name" >/dev/null

for img in *.png; do
  pngcrush "$img"
  mv pngout.png "$img"
done

popd >/dev/null

iconutil -c icns "$output_iconset_name"

echo "Iconset created at: $output_iconset_name"
