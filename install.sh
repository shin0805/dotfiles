cat << "EOF"
 __          __  _                            _          _____   ____ _______ ______ _____ _      ______  _____ 
 \ \        / / | |                          | |        |  __ \ / __ \__   __|  ____|_   _| |    |  ____|/ ____|
  \ \  /\  / /__| | ___ ___  _ __ ___   ___  | |_ ___   | |  | | |  | | | |  | |__    | | | |    | |__  | (___  
   \ \/  \/ / _ \ |/ __/ _ \| '_ ` _ \ / _ \ | __/ _ \  | |  | | |  | | | |  |  __|   | | | |    |  __|  \___ \ 
    \  /\  /  __/ | (_| (_) | | | | | |  __/ | || (_) | | |__| | |__| | | |  | |     _| |_| |____| |____ ____) |
     \/  \/ \___|_|\___\___/|_| |_| |_|\___|  \__\___/  |_____/ \____/  |_|  |_|    |_____|______|______|_____/ 
EOF

DOT_DIR="$HOME/dotfiles"
# cd $DOT_DIR

cat <<  "EOF"
  _____           _        _ _                     __ _       
 |_   _|         | |      | | |                   / _(_)      
   | |  _ __  ___| |_ __ _| | |    ___ ___  _ __ | |_ _  __ _ 
   | | | '_ \/ __| __/ _` | | |   / __/ _ \| '_ \|  _| |/ _` |
  _| |_| | | \__ \ || (_| | | |  | (_| (_) | | | | | | | (_| |
 |_____|_| |_|___/\__\__,_|_|_| (_)___\___/|_| |_|_| |_|\__, |
                                                         __/ |
                                                        |___/
EOF

# dirs=`find config -maxdepth 1 -type d -not -name ".*" | sort -n`
# for f in $dirs;
# do
#     ln -snf $DOT_DIR/$f $HOME/.$f
#     echo "Installed .$f"
# done

# files=`find . -maxdepth 1 -type f -name ".*"`
# for f in $files;
# do
#     ln -snf $DOT_DIR/$f $HOME/$f
#     echo "Installed $f"
# done

# echo "===="
# files=`find .vim -type f` 
# for f in $files;
# do
#     ln -snf $DOT_DIR/$f $HOME/$f
#     echo "Installed $f"
# done

# cd zsh
# dirs=`find . -type f | gawk -F/ '{print $NF}'`
# for f in $dirs;
# do
#     ln -snf $DOT_DIR/zsh/$f $HOME/.$f
#     echo "Installed zsh: .$f"
# done
# cd ../

cat <<  "EOF"
cp .p10k.zsh ../
cp .tmux.conf ../
cp .vimrc ../
cp .zshrc ../
cp -r .vim ../
EOF

cp .p10k.zsh ../
cp .tmux.conf ../
cp .vimrc ../
cp .zshrc ../
cp -r .vim ../
