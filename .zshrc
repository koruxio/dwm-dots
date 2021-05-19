# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
unsetopt nomatch

PROMPT=$'\n''%B%F{153}%~ ::  | %b%f'
#PROMPT=$'\n''%B%F{153}%~   | %b%f'
RPROMPT="[%h]"

alias x='startx'
alias f='xrandr --output DP-2 --brightness 0.8'
alias m='xrandr --output DP-2 --brightness 0.5'
alias n='xrandr --output DP-2 --brightness 0.3'
alias d='xrandr --output DP-2 --brightness 0.2'


push() {  
   echo "commit message: " 
   read msg    
   git status
   git add -A
   git commit -m "$msg"
   git push
}

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
