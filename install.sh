# vim install
sudo apt-get install software-properties-common
sudo apt-get update
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim
vim --version
mkdir -p ~/.vim/undo

# mozc
sudo apt install ibus-mozc
ibus restart
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'jp'), ('ibus', 'mozc-jp')]"

# openssh-server
sudo apt install openssh-server

# ag
sudo apt install silversearcher-ag

# xsel (for tmux)
sudo apt install xsel

# clang-format
sudo apt install clang-format

# yapf format
pip3 install yapf

