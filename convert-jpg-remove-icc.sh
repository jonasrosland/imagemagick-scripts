#!/bin/bash

# Add the path to your ICC/ICM profile here.
# If it's in the same directory as the script,
# just add the filename.
# You can use this here: https://pippin.gimp.org/sRGBz/
PROFILE="sRGBz.icc"

# This is where your processed files go
OUTPUTDIR=$PWD/output

for file in "$OUTPUTDIR"/*.jpg;
do
  PHOTO=${file##*/}
  BASE="${PHOTO%.jpg}"
  convert -verbose "$OUTPUTDIR/$PHOTO" -profile $PROFILE -strip "$OUTPUTDIR/$BASE-preview.jpg"
done
