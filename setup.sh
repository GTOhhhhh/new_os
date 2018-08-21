#!/bin/bash
# a simple script for automating my personal set up on a new linux box
# execute with sudo
# download intellij, webstorm & pycharm to /home/$USER/Downloads before running

# update
apt update
apt full-upgrade -y

# add repos
add-apt-repository ppa:agornostal/ulauncher -y
add-apt-repository ppa:nixnote/nixnote2-daily -y
curl -L https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'

# update repos and install new applications
apt update
# apt install git
apt install openjdk-11-jdk
apt install ulauncher -y
apt install firefox -y
apt-get install telegram-desktop -y
apt install atom -y
apt install nixnote2 -y
apt install xsel -y
apt install redshift -y
apt install python-nautilus -y
apt install gnome-screenshot -y
apt install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)
apt install python3-pip -y
apt install ipython -y
sudo -H pip3 install jupyter
for i in /home/$USER/Downloads/*.tar.gz; do echo working on $i; sudo tar xvzf $i -C /opt/; done
rm -r /home/$USER/Downloads/*.tar.gz





# restart computer



