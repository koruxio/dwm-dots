# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
unsetopt nomatch

#PROMPT=$'\n''%B%F{153}%~ ::  | %b%f'
#PROMPT=$'\n''%B%F{153}%~   | %b%f'
PROMPT=$'\n''%B%F{153}%~   | %b%f'
RPROMPT="[%h]"

alias x='startx'
alias f='xrandr --output eDP-1 --brightness 0.8'
alias m='xrandr --output eDP-1 --brightness 0.5'
alias n='xrandr --output eDP-1 --brightness 0.3'
alias d='xrandr --output eDP-1 --brightness 0.2'
alias c='mpv av://v4l2:/dev/video0 --profile=low-latency --untimed'


push() {  
   echo "commit message: " 
   read msg    
   git status
   git add -A
   git commit -m "$msg"
   git push
}

lock() {
	i3lock -c 0D0E0D
}

logoff() {
	pkill -KILL -u $USER
}

##Qts
#======

quotespool() {
WEBSRC='https://www.passiton.com/inspirational-quotes'
page=`shuf -i 1-50 -n 1`
quote=`curl -s $WEBSRC?page=$page | grep "<img alt=" | tr -s ">" | cut -f2 -d ">" | cut -f1 -d "#" | cut -f2 -d '"' | grep -v "&" | shuf -n 1`
echo "Hey $USER :)
"
echo "$quote"
}

pyenv() {
	echo "Enter environment name : \n"
	read envname

	echo "Enter python version\neg: 3.9"
	read pyversion

	mkdir $HOME/$envname
	cd $HOME/$envname


	conda create -n $envname python=$pyversion
	echo "Succesfully created environment $envname\n"
	echo "Installing default packages ->"
	
	pip install pandas matplotlib jupyter numpy scikit-learn scipy

	echo "Succesfully installed neccessary packages\n"

	cd $HOME/$envname
	
	jupyter-notebook
}



###Lofi play
#============

lofi() {
echo -e "\e[2;96m"
quotespool
echo -e "\n"
echo " Playing lofi... relax and chill... :)
"
mpv --really-quiet --no-video https://www.youtube.com/watch?v=5qap5aO4i9A &
sleep 5
bash .shellrain
}

export PATH="$PATH:~/.local/bin"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
