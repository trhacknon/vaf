#!/bin/bash

if [ "$(id -u)" != "0" ]; then
   echo "ERROR: This script must be run as root" 1>&2
   exit 1
fi

echo "Downloading vaf"
wget https://github.com/trhacknon/vaf/releases/download/v2.0.0/Linux-vaf
echo "Deleting previous installation of var (if it exists)"
rm /usr/bin/vaf
echo "Moving vaf to /usr/bin/vaf"
mv Linux-vaf /usr/bin/vaf
chmod +x /usr/bin/vaf
echo
echo "vaf installed successfully, now, you can run 'vaf'"
