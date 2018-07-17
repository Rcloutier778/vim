source ~/.bash aliases
stty —ixon

export PATH=~/bin:$PATH

[[ —n "SDISPLAY" && "STERM" = "xterm" ]] && export TERM=xterm—256color

echo —ne "\033]O;${USER}@${HOSTNAME}: ${PWD}\OOT"

