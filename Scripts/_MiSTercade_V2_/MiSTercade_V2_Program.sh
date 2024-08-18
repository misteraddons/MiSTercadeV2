#!/usr/bin/env bash

echo "Flashing USB0..."
cp GP2040-CE_latest_MiSTercadeV2.uf2 /media/usb0
echo "USB0 flashed successfully"
echo "Flashing USB1..."
cp GP2040-CE_latest_MiSTercadeV2.uf2 /media/usb1
echo "USB1 flashed successfully"