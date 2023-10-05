# vim install
sudo apt-get install software-properties-common
sudo apt-get update
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim
vim --version

# mozc
sudo apt install ibus-mozc
ibus restart
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'jp'), ('ibus', 'mozc-jp')]"

# openssh-server
sudo apt install openssh-server
