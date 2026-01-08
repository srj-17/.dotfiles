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
