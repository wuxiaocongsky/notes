# Git branch in prompt.

parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

#export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
export PS1="\033[00m:\033[01;36m\w\033[00m\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

#################
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

################

#enables colorin the terminal bash shell export  
export CLICOLOR=1  
  
#sets up thecolor scheme for list export  
export LSCOLORS=gxfxcxdxbxegedabagacad  
  
#sets up theprompt color (currently a green similar to linux terminal)  
#export PS1='\033[01;32m\u@\h\033[00m:\033[01;36m\w\033[00m\$ '  
  
#enables colorfor iTerm  
export TERM=xterm-color
