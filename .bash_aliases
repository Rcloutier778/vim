alias reset="clear && printf '\033[3J'"

alias search="grep —rnw —e "

alias ..='cd ..'
alias ....='cd ../..'
alias ~='cd ~'
alias reload='source ~/.bashrc'
alias top='top -u ubuntu -c -d 1'

function cd { builtin cd "$@" && ls; }



title(){ 
    echo —ne "\033]0;"$1"\007" 
}

