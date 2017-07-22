#!/bin/sh -e
if [ ! -d "aports" ]; then
    echo "Please execute this script in your pmbootstrap folder."
    exit 1
fi

mkdir aports_new
mv aports/*/* aports_new/
rm -r aports
mv aports_new aports
