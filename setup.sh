#!/bin/bash
# a simple script for automating my personal set up on a new linux box
# execute with sudo
# download intellij, webstorm & pycharm to /home/$USER/Downloads before running

# update
apt update -y
apt full-upgrade -y

# add repos
add-apt-repository ppa:agornostal/ulauncher -y

# add-apt-repository ppa:nixnote/nixnote2-daily -y
# update repos and install new applications
apt update -y
apt install default-jdk -y
apt install ulauncher -y

sudo add-apt-repository ppa:oguzhaninan/stacer -y
sudo apt-get update
sudo apt-get install stacer -y

# apt install firefox -y
sudo apt update
# sudo apt install postgresql postgresql-contrib -y
apt-get install telegram-desktop -y
# apt install atom -y
# apt install nixnote2 -y
apt install xsel -y
apt install redshift -y
apt install python-nautilus -y
sudo apt install flameshot
apt install gnome-screenshot -y
apt install python3-pip -y
apt install ipython -y t
apt install openconnect

# install node & npm
sudo apt install nodejs npm

# install vs code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
apt-get install apt-transport-https
apt-get update
apt-get install code

#install docker 
# sudo apt-get install \
#     apt-transport-https \
#     ca-certificates \
#     curl \
#     gnupg-agent \
#     software-properties-common
# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# add-apt-repository \\n   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \\n   $(lsb_release -cs) \\n   stable"
# apt-get update
# apt-get install docker-ce docker-ce-cli containerd.io

sudo -H pip3 install jupyter
for i in /home/$USER/Downloads/*.tar.gz; do echo working on $i; sudo tar xvzf $i -C /opt/; done
rm -r /home/$USER/Downloads/*.tar.gz

#install zsh
apt install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)

# appends open command to ~/.zhrc
function open(){ nohup nautilus "$@" &; }
echo "function open(){ nohup nautilus "$@" &; }" >> /home/$USER/.zshrc

# restart computer
