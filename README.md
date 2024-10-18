# Dotfiles : Srj-17
Sauce
## Note to self:
- These are private dotfiles. DO NOT make them public
- Use a different dotfile repo such as `dotfile-public` if you want to do that

# Installing the required apps
# For i3
- Window manager: `i3-wm`
- Status: `i3status` -- downloaded with i3-wm in debian
- Wallpapers are expected from ~/Pictures/wallpapers/ using `nitrogen`
- File manager: `thunar`
- Browser: `firefox`
- Terminal Emulator: `Xfce-4`
- Compositor: `picom`
- `lxappearance` for setting gtk themes
- Application Launcher: `rofi`

# Other preferences
- ***Editor*** - Neovim
    - And vscode sometimes -- profile given in EDITH.code-profile

- ***Terminal-Emulator*** - xfce4-terminal
- ***Terminal Multiplexer*** - tmux
    > [!NOTE]
    > tpm won't work as I've not included ~/.tmux in the dotfiles, so please clone
    > it from the official source as `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

# Other apps whose configs are provided
- redshift
- neofetch
- syncthing 

# Applying these dotfiles
1. Install stow with your package manager
```bash
sudo apt install stow
```
2. Install git
```bash
sudo apt install bash
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

> As you see here, I used stow to manage all these dotfiles
# How stowing works
```bash
# Package Directory Structure (~/dotfiles/)

~/dotfiles/
├── bash/
│   └── .bashrc
│   └── .bash_aliases
│   └── .bash_profile
├── nvim/
│   └── .config/
│       └── nvim/
│           └── init.lua
│           └── lua/


# Target / Parent Directory (~/) after running 'stow bash' and 'stow nvim'

~/
├── .bashrc                 --> symlink to ~/dotfiles/bash/.bashrc
└── .config/nvim/init.lua   --> symlink to ~/dotfiles/nvim/.config/nvim/init.lua
```

`stow nvim` *stows* nvim: meaning it creates symlinks for the directories in the nvim 
directory in parent directory from where you run the stow command 
Here, if you run the `stow nvim` command in ~/dotfiles/ directory, it will create
a symlink for the packages in the parent directory in the same directory structure
as that of your nvim

Basically, it creates symlinks in *parent* directory by keeping the directory 
structure in the *package* (nvim being the so called *package*) here


