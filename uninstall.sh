#!/bin/bash

# Source variables from the install script
source ./install.sh

# Check if backup directory exists
if [ ! -d "$backup_dir" ]; then
    echo "Backup directory $backup_dir does not exist. No files to restore."
    exit 1
fi

# Unlink dotfiles and restore from backup
for file in "${dotfiles[@]}"; do
    # Check if the symlink exists and remove it
    if [ -L ~/$file ]; then
        echo "Removing symlink $file"
        rm ~/$file
    else
        echo "No symlink found for $file"
    fi
    
    # Check if backup exists and restore the original file
    if [ -f $backup_dir/$file ]; then
        echo "Restoring $file from backup"
        mv $backup_dir/$file ~/$file
    else
        echo "No backup found for $file"
    fi
done

echo "Dotfiles uninstalled and original files restored."
