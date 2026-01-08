alias neofetch="neofetch --source ~/.config/neofetch/ascii/luffy.txt"
alias nv="nvim"
alias n="nvim ."

# open today's note 
alias ot="nvim +ObsidianToday"

# search for a note in obsidian.nvim's search dir
alias os="nvim +ObsidianSearch"

# for copying and pasting into the x system clipboard
# using command line utility xclip
alias copy="xclip -selection c"
alias paste="xclip -selection clipboard -o"

alias py="python3"
alias mu="mupdf"
alias lg="lazygit"

if [ "$COLORTERM" ]; then
    alias ls='ls -F --color=auto'
else
	alias ls='ls -F'
fi
