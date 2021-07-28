sudo pacman -S sxhkd pacman-contrib newsboat torbrowser-launcher youtube-dl rofi i3lock transmission-gtk mpv firefox xf86-input-libinput gvfs-mtp pcmanfm-gtk3 gvfs file-roller neofetch dunst feh ntfs-3g papirus-icon-theme picom pulseaudio pulsemixer dmenu scrot kitty cmus eog evince zsh zsh-syntax-highlighting zsh-autosuggestions telegram-desktop nodejs npm ttf-nerd-fonts-symbols ttf-jetbrains-mono wget xed xorg-server xorg-xinit xorg-xrandr xorg-xsetroot --needed --noconfirm

sudo pacman -S zsh zsh-syntax-highlighting zsh-autosuggestions telegram-desktop nodejs npm --needed --noconfirm

chsh -s /bin/zsh 

cp -r .config .zshrc .xinitrc $HOME

cd $HOME

git clone https://github.com/sarosx/vim-configs

cd vim-configs

cp -r .vimrc .vim $HOME


curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
