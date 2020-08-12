# imagemagick-scripts
Scripts to automate scanning processes for VGSC

## How to use

1. After scanning, you can run `convert-tif-to-icc.sh` to apply your ICC profile to all your TIFF files
1. Then you can run `convert-tif-to-jpg.sh` to create a preview file
1. Finally, you can run `convert-jpg-remove-icc.sh` to apply an sRGB profile directly to the JPG preview,
so it shows up nicely in browsers and image viewers that don't support embedded profiles
