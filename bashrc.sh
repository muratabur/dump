export SUADE_DEBUG=1
export EDITOR=vim

# \u = 'username'
# \h = 'hostname'
# \n = 'newline'

color2='\e[1;31m'
color3='\e[0;32m'
color4='\e[5;33m'
color5='\e[0;34m'
endcolor='\e[0m'
# Display welcome message
echo -e "Hey ${color2}$USER${endcolor}, what's up? \n"

export PS1="\n${color5}\u${endcolor} at ${color5}\h ${endcolor}: ${color3}\w${endcolor} ${color4}...${endcolor} \n\$ \[$(tput sgr0)\]"

# folder colors
alias ls='ls --color'
LS_COLORS='di=1:ex=4:*.py=1;31:*.pyc=31:*.json=95:*.md=91:*.html=32:*.xml=94:*.css=93:*.js=93'
export LS_COLORS
