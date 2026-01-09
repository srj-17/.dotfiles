# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

if [ -f "$HOME/.local/bin/env" ] ; then
    . "$HOME/.local/bin/env"
fi

# why set path variables here?
# https://stackoverflow.com/a/38094841
# --------------------------------------------------------#
# setting up PATH 
# --------------------------------------------------------#
export PATH="$PATH:/home/srj/.nvm/versions/node/v20.14.0"
export PATH="$PATH:$HOME/myscripts"
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:/opt/nvim-linux64/bin"

export PATH="$PATH:$HOME/texlive/2025/bin/x86_64-linux"
export INFOPATH="$INFOPATH:$HOME/texlive/2025/bin/x86_64-linux"
export MANPATH="$MANPATH:$HOME/texlive/2025/bin/x86_64-linux"

export GOPATH="$HOME/go"

export BROWSER="firefox"
export EDITOR="vi"
export VISUAL="nvim"
