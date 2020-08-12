#!/bin/bash

# Add the path to your ICC/ICM profile here.
# If it's in the same directory as the script,
# just add the filename.
PROFILE="profile-created-from-your-scanner.icm"

# This is where your processed files go
OUTPUTDIR=$PWD/output

for PHOTO in *.tif
do
    convert -verbose "$PHOTO" -profile "$PROFILE" "$OUTPUTDIR/$PHOTO"
done
