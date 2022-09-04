# macOS .icns

Create an `.icns` file suitable for being an app icon or a DMG icon on macOS.

## Creation Workflow

### App Icon

See [`create_app_icon.sh`] for the details of the creation process.

[`create_app_icon.sh`]: create_app_icon.sh

### Disk Image Icon

`Removable.png` is the largest disk image icon from
`/System/Library/Extensions/IOStorageFamily.kext/Contents/Resources/Removable.icns`.

See [`create_disk_image_icon.sh`] for the details of the creation process.

[`create_disk_image_icon.sh`]: create_disk_image_icon.sh
