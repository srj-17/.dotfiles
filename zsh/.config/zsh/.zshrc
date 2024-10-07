# ----------------- PROMPT ----------------------------#
# parse_git_dirty sees what is the git status rn 
function parse_git_dirty {
  STATUS="$(git status 2> /dev/null)"
  if [[ $? -ne 0 ]]; then printf ""; return; else printf " ["; fi
  if echo ${STATUS} | grep -c "renamed:"         &> /dev/null; then printf " >"; else printf ""; fi
  if echo ${STATUS} | grep -c "branch is ahead:" &> /dev/null; then printf " !"; else printf ""; fi
  if echo ${STATUS} | grep -c "new file::"       &> /dev/null; then printf " +"; else printf ""; fi
  if echo ${STATUS} | grep -c "Untracked files:" &> /dev/null; then printf " ?"; else printf ""; fi
  if echo ${STATUS} | grep -c "modified:"        &> /dev/null; then printf " *"; else printf ""; fi
  if echo ${STATUS} | grep -c "deleted:"         &> /dev/null; then printf " -"; else printf ""; fi
  printf " ]"
}

function parse_git_branch() {
  # Long form
  git rev-parse --abbrev-ref HEAD 2> /dev/null
 # Short form
  # git rev-parse --abbrev-ref HEAD 2> /dev/null | sed -e 's/.*\/\(.*\)/\1/'
}

# %B => make the following text bold %F{colorcode} => of the following color(code) 006 => teal 
PROMPT='%B%F{015}%~%B%F{006} 󰅂%B%F{015} '
# right prompt; %t = time
RPROMPT='%B%F{006}$(parse_git_branch)%F{003}$(parse_git_dirty) %B%F{015}%t'

# -------------------------Exports---------------------#
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
export BROWSER="firefox"
export EDITOR="vi"
export VISUAL="nvim"

# for spaces between prompts
precmd() { print "" }

# # to allow for arrow key navigation during cd
autoload -Uz compinit
# ## to allow functions into our prompt, we set this option
setopt PROMPT_SUBST
# Compinit is for completion, but we're using a plugin for that below
compinit
zstyle ':completion:*' menu select

# source plugins
source $HOME/.config/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source $HOME/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# --------------------- source other essential files -----------------------#
if [ -f ~/.config/zsh/.zsh_aliases ]; then
    source ~/.config/zsh/.zsh_aliases
fi

# keybinds
#

# History
HISTSIZE=5000
HISTFILE=~/.config/zsh/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory

# dups = duplicates
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# prevents our command to be written to history by adding space before it
setopt hist_ignore_space


#------------------------------------------------------#
#

# completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no

# shell integrations
# for fzf search in the shell (doesn't work)
# eval "$(fzf --zsh)"

# for better cd
eval "$(zoxide init --cmd cd zsh)"
