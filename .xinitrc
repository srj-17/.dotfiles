#!/bin/bash

# remap your caps lock key to escape_shifted_capslock
#   Doesn't remap effectively, so used localectl to do that
#   To reset localectl do: localectl set-x11-keymap us '' '' 
#   To remap to a new key do: localectl set-x11-keymap us '' '' key:keymap
#   To see what keys are available to remap, do 
#       grep "caps" /usr/share/x11/xkb/rules/base.lst  
# setxkbmap -option "caps:escape_shifted_capslock"
