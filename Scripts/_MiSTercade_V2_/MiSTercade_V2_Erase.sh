#!/usr/bin/env bash

echo "Nuking USB0..."
cp flash_nuke.uf2 /media/usb0
echo "USB0 nuked successfully"
echo "Nuking USB1..."
cp flash_nuke.uf2 /media/usb1
echo "USB1 nuked successfully"