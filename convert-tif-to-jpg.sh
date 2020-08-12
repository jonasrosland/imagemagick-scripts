#!/bin/bash

# This is where your processed files go
OUTPUTDIR=$PWD/output

for file in "$OUTPUTDIR"/*.tif;
do
  PHOTO=${file##*/}
  BASE="${PHOTO%.tif}"
  convert -verbose "$OUTPUTDIR/$PHOTO" -resize 15% "$OUTPUTDIR/$BASE.jpg"
done
