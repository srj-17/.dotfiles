# command history settings
HISTFILE=~/.config/zsh/.zsh_history
HISTSIZE=5000
SAVEHIST=$HISTSIZE
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# load external essentials
if [[ -f ~/.config/zsh/.zsh_prompt ]]; then
    source ~/.config/zsh/.zsh_prompt
fi

if [[ -f ~/.config/zsh/.zsh_profile ]]; then
    source ~/.config/zsh/.zsh_profile
fi

if [[ -f ~/.config/zsh/.zsh_aliases ]]; then
    source ~/.config/zsh/.zsh_aliases
fi

# add syntax highlighting if we've downloaded 
if [[ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] ; then
    source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 
fi

# add zsh autosuggestions if we've downloaded
if [[ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]] ; then
    source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh 
fi

# case insensitive completion
eval "$( dircolors -b )" # to load LS_COLORS
autoload -U compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' 
# for colors with cd <tab>
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS} 
zstyle ':completion:*' menu select

bindkey -v

if command -v zoxide &> /dev/null; then
    eval "$(zoxide init zsh)"
    alias cd="z"
fi

# r means carriage return  
# scripts
bindkey -s "^f" "tmux-sessionizer\r"
bindkey -s "^n" "note\r"

# keybinds
bindkey '^r' history-incremental-search-backward

