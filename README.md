# Dotfiles : Srj-17
- Only my most important dotfiles
## Note to self:
- These are private dotfiles. DO NOT make them public
- Use a different dotfile repo such as `dotfile-public` if you want to do that

# TODO
- [ ] make install script for linking with `ln` command. BE CAREFUL, and try on the small pc first

# To install
- Add executable mode to `install.sh` and `uninstall.sh` 
    - using `chmod +x install.sh` (executable)
    - and `chmod +x uninstall.sh`
- Run installation using `./install`

# For i3
- `i3-wm` using apt from debian repo
- wallpapers are expected from ~/Pictures/wallpapers/ using `nitrogen`
- `thunar` file manager is used
- `firefox` browser
- `Xfce-4 terminal emulator`
- `picom` for compositor
- `lxappearance` for setting gtk themes

> use stow to manage all these dotfiles
