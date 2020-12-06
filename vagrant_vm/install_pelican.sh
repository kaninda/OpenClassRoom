#!/bin/bash

echo "INSTALL PELICAN"


apt-get update -qq >/dev/null
apt-get install software-properties-common >/dev/null
apt-add-repository universe >/dev/null
apt-get update -qq >/dev/null
apt-get install -y python3-pip  -qq >/dev/null

pip3 install pelican >/dev/null

pip3 install markdown >/dev/null

pip3 install PyYAML >/dev/null



echo "END INSTALL PELICAN"