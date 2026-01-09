# tmux creates login shells & 
# login shells look for whichever is found first in
# bash_profile, 
# bash_login
# profile for configuration files
# so, we need to source .bashrc
# which is done in .profile (most of our configuration lives there)
#
# because .profile is sourced by desktop managers for setting up the 
# environment, all environment config just lives there.
source ~/.profile

. "$HOME/.local/bin/env"
