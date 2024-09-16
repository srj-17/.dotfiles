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
