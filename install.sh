sudo pacman -S arc-gtk-theme sxhkd rofi i3lock transmission-gtk mpv firefox xf86-input-libinput gvfs-mtp nemo gvfs file-roller neofetch dunst feh ntfs-3g papirus-icon-theme picom pulseaudio pulsemixer dmenu scrot kitty ttf-nerd-fonts-symbols ttf-jetbrains-mono wget xed xorg-server xorg-xinit xorg-xrandr xorg-xsetroot --needed --noconfirm

sudo pacman -S zsh zsh-syntax-highlighting zsh-autosuggestions telegram-desktop nodejs npm --needed --noconfirm

chsh -s /bin/zsh 

cp -r .config .vimrc .zshrc .vim .xinitrc $HOME

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
