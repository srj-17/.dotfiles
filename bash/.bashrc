# saving aliases in ~/.bash_aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# setting up nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ---------------------- styling ls -------------------#
eval "$( dircolors -b )" # to load LS_COLORS
if [ "$COLORTERM" ]; then
    alias ls='ls -F --color=auto'
else
	alias ls='ls -F'
fi
# -----------------------------------------------------#

# -------------- set vim keybindings ----------------#
set -o vi
bind '"\C-f": "tmux-sessionizer\n"'
bind '"\C-n": "note\n"'
