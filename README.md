- How to install neovim
$ sudo snap install nvim --classic
$ mkdir -p ~/.config/nvim/undo

- How to install ccls for coc nvim
$ sudo snap install ccls --classic

- How to install vim
$ sudo apt-get install software-properties-common
$ sudo apt-get update
"リポジトリの追加
$ sudo add-apt-repository ppa:jonathonf/vim
$ sudo apt update
"インストール
$ sudo apt install vim
"バージョン確認
$ vim --version

- How to change capslock to ctrl
XKBOPTIONS="ctrl:nocaps" in /etc/default/keyboard
$ sudo systemctl restart console-setup

- How to install ja mozc
$ sudo apt install ibus-mozc
$ ibus restart
$ gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'jp'), ('ibus', 'mozc-jp')]"

- How to change the default shell
$ which shell
$ chsh -s %% the result of which shell %%
$ reboot

- How to copy dotfiles
$ sh cp_dotfiles.sh

- How to install dropbox
$ sudo apt install -y nautilus-dropbox

- How to install tex
$ sudo apt-get install texlive-full
$ sudo apt install nkf

- How to install openssh-server
$ sudo apt install openssh-server

- How to install ag
$ sudo apt install silversearcher-ag

- How to change the git default editor
$ git config --global core.editor vim

- How to install yapf
$ pip install yapf