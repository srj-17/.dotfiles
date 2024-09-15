#!/bin/bash

applyDotfiles ()
{
    # create a backup of current dotfiles
    backup_dir=~/dotfiles_backup
    dotfiles_dir=~/dotfiles
    dotfiles=(".bashrc" ".bash_aliases" ".bash_history" ".bash_profile" ".config" ".gitconfig" ".gitconfig-ranhoodlum" ".xinitrc" ".profile")
    mkdir -p $backup_dir

    # Backup and link dotfiles
    for file in "${dotfiles[@]}"; do
        if [ -f ~/$file ]; then
            echo "Backing up $file to $backup_dir"
            mv ~/$file $backup_dir/
        fi
        echo "Creating symlink for $file"
        ln -sf $dotfiles_dir/$file ~/$file
    done

    echo "Dotfiles installed successfully."
}

# prompt for confirmation of installation, because we'll remove the data now
printf "All the current dotfiles (.config, .xinitrc, .bashrc, etc. ) will be replaced by these dotfiles.\n" 
printf "Tho you'll be able to recover them"
read -p 'Are you sure you want continue? (y/n)? ' answer

# we're checking if the answer is equal to itself after removing leading y or Y.
# if it isn't [this means answer is equal to yes, or no] we continue, else we dont
# ex: [yes != es]
# so, this script accepts any of Yes yes ydflskdjfsd
if [ "$answer" != "${answer#[Yy]}" ] ; then
    applyDotfiles
else
    echo "Exiting the installation..."
fi
