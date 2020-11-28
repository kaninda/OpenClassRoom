#!/bin/bash

echo "INSTALL GITLAB"

apt-get update -qq >/dev/null
apt-get install -qq -y net-tools  >/dev/null
curl -s https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
apt-get update -qq >/dev/null
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
apt-get install -y gitlab-ce
gitlab-ctl reconfigure
echo "END - install gitlab"

#sudo dpkg-reconfigure locales

