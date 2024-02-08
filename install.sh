# nvim install
sudo snap install nvim --classic

# ccls (for coc nvim)
sudo snap install ccls --classic

# volta
curl https://get.volta.sh | bash
# node (for coc nvim)
volta install node

# vim install
# sudo apt-get install software-properties-common
# sudo apt-get update
# sudo add-apt-repository ppa:jonathonf/vim
# sudo apt update
# sudo apt install vim
# vim --version
# mkdir -p ~/.vim/undo

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

# openssh-server
sudo apt install openssh-server

# ag
sudo apt install silversearcher-ag

# change the git default editor
git config --global core.editor vim

