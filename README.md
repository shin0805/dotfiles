# dotfiles
### install and copy dotfiles
```
sh cp_dotfiles.sh
sh install.sh
```

# memo
### How to change capslock to ctrl
XKBOPTIONS="ctrl:nocaps" in /etc/default/keyboard
```
sudo systemctl restart console-setup
```

### How to change the default shell
```
which shell
chsh -s %% the result of which shell %%
reboot
```

### How to install dropbox
```
sudo apt install -y nautilus-dropbox
```

### How to install tex
```
sudo apt-get install texlive-full
sudo apt install nkf
```
