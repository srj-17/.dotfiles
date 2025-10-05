# Dotfiles : Srj-17

![i3 screenshot associated with dots](screenshot.png)

# Installing the required apps

# For i3

| Task | Tool Used |
| -------------- | --------------- |
| Window Manager | i3-wm |
| Statusbar | i3status (downloaded with i3-wm in debian) |
| File Manager | Thunar |
| Font | JetBrains Nerd fonts |
| Browser | firefox |
| Terminal Emulator | xfce-4 (gruvbox theme from: [here](https://github.com/xelser/gruvbox-xfce4-terminal)) |
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

1. Install stow with your package manager

```bash
sudo apt install stow
```

2. Install git

```bash
sudo apt install git
```

3. make a backup of your current dotfiles directory

```bash
mv ~/dotfiles ~/dotfiles_backup
```

3. Clone the repo in your $HOME directory

```bash
git clone git@github.com:srj-17/.dotfiles.git ~/dotfiles
cd ~/dotfiles
```

4. Stow the files that you need the configurations
   For example:

```bash
stow nvim
```

