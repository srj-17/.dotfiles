# Welcome message printer
# -----------------------------------------------------------
# text to print
text="Meh, I'll make it, I always do"
# text="This too shall pass"

# find terminal width and text length
terminal_width=$(tput cols)
text_length=${#text}

# remaining space is divided into left and right widths
padding=$(( (terminal_width - text_length) / 2 ))

# calculate padding and add as much empty space as the padding
# with %s, so padding=10, the %10s
# %${padding}s
printf "\033[1;46m%${padding}s%s%${padding}s\033[0m\n" "" "$text" ""
#---------------------------------------------------------------

# -------------------------Exports---------------------#
# styling prompt
export PS1="┌─[\[\e[01;34m\]\u\[\e[01;34m\]@\[\e[01;34m\]\h\[\e[01;34m\]:\[\e[01;34m\]\w\[\e[00m\]]\n└─╼ " 

# directory coloring
export LS_COLORS=$LS_COLORS:'di=1;34:'  # Blue color for directories

# idk what this does, but sth about nvim, so IMP
export PATH="$PATH:/opt/nvim/"

# nvm installation
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# setting up 
PATH=$PATH:~/myscripts
#------------------------------------------------------#

# ---------------------- styling ls -------------------#
if [ "$COLORTERM" ]; then
	# if [ -n "$COLORTERM" ]; then
	alias ls='ls -F --color=auto'
	if [ -x "`which dircolors`" -a -r "$HOME/.dir_colors" ]; then
		eval `dircolors -b "$HOME/.dir_colors"`
	fi
else
	alias ls='ls -F'
fi
# -----------------------------------------------------#

# saving aliases in ~/.bash_aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# -------------- set vim keybindings ----------------#
set -o vi
# ---------------------------------------------------#


