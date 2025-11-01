# -------------------------Exports---------------------#
# styling prompt
export PS1="┌─[\[\e[01;34m\]\u\[\e[01;34m\]@\[\e[01;34m\]\h\[\e[01;34m\]:\[\e[01;34m\]\w\[\e[00m\]]\n└─╼ " 

# directory coloring
export LS_COLORS=$LS_COLORS:'di=1;34:'  # Blue color for directories

# nvm installation
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ----------------- setting up PATH ----------------------#
PATH=$PATH:/home/srj/.nvm/versions/node/v20.14.0/
PATH=$PATH:~/myscripts

# This exposes the nvim directory globally
export PATH="$PATH:/opt/nvim-linux64/bin"
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
bind '"\C-f": "tmux-sessionizer\n"'
bind '"\C-n": "note\n"'
