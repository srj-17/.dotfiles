# tmux creates login shells & login shells look for bash_profile, profile and bash_login for configuration files
# so, we specifiy to source .bashrc
# source is basically like require() in lua / include in c (but not preprocessing part tho)
source ~/.bashrc

. "$HOME/.local/bin/env"
