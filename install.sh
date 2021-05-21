sudo pacman -S arc-gtk-theme transmission-gtk mpv firefox xf86-input-libinput gvfs-mtp nemo gvfs file-roller neofetch feh ntfs-3g papirus-icon-theme picom pulseaudio pulsemixer dmenu scrot alacritty ttf-nerd-fonts-symbols ttf-jetbrains-mono wget xed xorg-server xorg-xinit xorg-xrandr xorg-xsetroot --needed --noconfirm

sudo pacman -S zsh zsh-syntax-highlighting zsh-autosuggestions 
sudo pacman -S telegram-desktop nodejs npm

chsh -s /bin/zsh 

cp -r .config .vimrc .zshrc .vim .xinitrc $HOME

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cd $HOME/.config/dwm-6.2

sudo make clean install

cd $HOME/.config/dwm-6.2/slstatus

sudo make clean install

reboot
