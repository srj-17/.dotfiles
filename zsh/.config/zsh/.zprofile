# zsh login shell doesn't source .profile by default
# it sources .zprofile, 
# so manual sourcing to link the files
# necessary
if [ -f ~/.profile ]; then
    source ~/.profile
fi
