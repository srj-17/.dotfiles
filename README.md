# Dotfiles : Srj-17

![i3 screenshot associated with dots](screenshot.png)

# Installing the required apps

# For i3

| Task | Tool Used |
| -------------- | --------------- |
| Window Manager | i3-wm |
| Statusbar | i3status (downloaded with i3-wm in debian) |
| File Manager | Thunar |
| Font | JetBrains Nerd fonts (download necessary) |
| Browser | firefox |
| Terminal Emulator | alacritty |
| Compoistor | picom |
| gtk themes | lxappearance (themes [from the great mcpain](https://github.com/TheGreatMcPain/gruvbox-material-gtk)) |
| qt themes | qt5ct |
| application launcher | rofi |
| screenshot | flameshot |
| pdf viewer | mupdf and zathura (zathura-themes: [from here](https://github.com/BeyondMagic/zathura-themes?tab=readme-ov-file)) |
| image viewer | feh |
| switching layouts (local and english) | [xkbswitch](https://github.com/ivanesmantovich/xkbswitch.nvim) |
| key remapper | keyd ([keyd_config](./keyd_config) - copy to `/etc/keyd/default.conf`)|
| Editor | Neovim and vscode (config `./EDITH.code-profile`) |
| Terminal Multiplexer | tmux |
| night light | redshift |
| computer info | neofetch |
| syncing between devices | syncthing |

> [!IMPORTANT]
> 
> Also, install node.

> [!NOTE]
> tpm won't work as I've not included ~/.tmux in the dotfiles, so please clone
> it from the official source as `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

> [!NOTE]
> Wallpapers are expected from ~/Pictures/wallpapers/ using `nitrogen`


# Applying these dotfiles

1. Create required folders
```bash
mkdir ~/Sync/notes
```

2. Install required packages
```bash
sudo apt install unzip ripgrep luarocks jq zoxide
```

Also install [dotnet](https://learn.microsoft.com/en-us/dotnet/core/install/linux-ubuntu-install?tabs=dotnet9&pivots=os-linux-ubuntu-2404)

3. Install stow with your package manager

```bash
sudo apt install stow
```

4. Install git

```bash
sudo apt install git
```

3. make a backup of your current dotfiles directory

```bash
mv ~/dotfiles ~/dotfiles_backup
```

4. Clone the repo in your $HOME directory

```bash
git clone git@github.com:srj-17/.dotfiles.git ~/dotfiles
cd ~/dotfiles
```

5. Stow the files that you need the configurations
   For example:

```bash
stow nvim
```

> [!NOTE]
> Redshift config won't work in system with [apparmor](https://apparmor.net/)
> because it can't read the files outside of `~/.config/`.
> So, `redshift.conf` symlink created with stow won't work
> as well. You can either change `apparmor` config for 
> redshift (`/etc/apparmor.d/usr.bin.redshift`) 
> or use hard links like so:
> ```bash
> rm ~/.config/redshift/redshift.conf
> ln ~/.dotfiles/misc/.config/redshift/redshift.conf ~/.config/redshift/redshift.conf
> ```
