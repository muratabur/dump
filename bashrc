export SUADE_DEBUG=1
export EDITOR=vim

# \u = 'username'
# \h = 'hostname'
# \n = 'newline'

color1='\e[1;30m'
color2='\e[1;31m'
color3='\e[0;32m'
color4='\e[5;33m'
color5='\e[0;34m'
color6='\e[0;35m'
endcolor='\e[m'

function EXT_COLOR () { echo -ne "\[\033[1;38;5;$1m\]"; }

source ~/.git-prompt.sh

# Display welcome message
echo -e "Hey ${color1}$USER${endcolor}, what's up? \n"

export PS1="\n${color2}\u${endcolor} at ${color2}\h ${endcolor}: ${color3}\w${endcolor} ${color4}...${endcolor} ${color6}\$(__git_ps1)${endcolor}\n\$ "

# folder colors
alias ls='ls --color=auto'
LS_COLORS='di=32:ex=4:*.py=1;31:*.pyc=31:*.json=95:*.yaml=95:*.yml=95:*.md=1;30:*.html=35:*.xml=94:*.css=34:*.ttf=34:*.woff=34:*.js=33:*.png=37:*.jpg=36:*.gif=37:*.svg=38:*.pdf=34'

export LS_COLORS


# node crap
NPM_PACKAGES="${HOME}/.npm-packages"
PATH="$NPM_PACKAGES/bin:$PATH"
# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

alias cdd='cd ~/downloads' 
alias sub='subl'
alias ..='cd ..'
