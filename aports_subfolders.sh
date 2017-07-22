#!/bin/sh -e
if [ ! -d "aports" ]; then
    echo "Please execute this script in your pmbootstrap folder."
    exit 1
fi

for i in cross device main ui-plasma-mobile unmaintained; do
    mkdir -p aports_new/"$i"
done

cd aports
mv *-armhf *-aarch64 qemu-user-static-repack ../aports_new/cross
mv device-* linux-* ../aports_new/device
mv acpid ../aports_new/unmaintained
mv * ../aports_new/main

cd ..
rm -d aports
mv aports_new aports
