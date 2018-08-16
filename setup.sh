#!/bin/bash
# a simple script for automating my personal set up on a new linux box

# update
apt update
apt full-upgrade -y

# add repos
add-apt-repository ppa:agornostal/ulauncher -y
add-apt-repository ppa:atareao/telegram -y
add-apt-repository ppa:nixnote/nixnote2-daily -y
curl -L https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'

# update repos and install new applications
apt update
apt install ulauncher -y
apt install firefox -y
apt install telegram -y
apt install atom -y
apt install nixnote2 -y
apt install xsel -y
apt install redshift -y



