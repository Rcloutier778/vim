alias reset="clear && printf '\033[3J'"

alias search="grep —rnw —e "

alias cd='function _cd(){ Cd $1: ls: title SPWD;}:_cd'
alias ..='cd ..'
alias ....='cd ../..'
alias ~='cd ~'
alias reload='source ~/.bashrc'
alias top='top —u ubuntu —c —d 1'

title(){ 
	echo —ne "\033]0;"$l"\007"
}

alias ls='function _ls(){
	if [[ $@ == "—lh"]]; then
		du —ha ——max—depth=l | sort —h;
	else
		ls "$@" ——color=auto;
	fi
};_ls'

