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

### How to run LSP in catkin build
```
catkin build --cmake-args -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
cp build/<package-name>/compile_commands.json src/<package-name>/ 
```

### How to start nvim LSP
```
:CocInstall coc-clangd
:CocCommand clangd.install
```
?

### How to start/stop Copilot
in nvim
```
:Copilot setup
```
```
:Copilot enable
:Copilot disable
```

### How to install uv
```
curl -LsSf https://astral.sh/uv/install.sh | sh
```

### How to install direnv
```
sudo apt install direnv
```

### How to use fg in nvim
```
sudo apt install ripgrep
```
