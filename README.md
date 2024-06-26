# Linux Dotfiles repository

Welcome to my Linux Dotfiles repository.

My dotfiles are configured to work on __Manjaro Linux__, which is based on _Arch_.
If you use a different distro it can't be ensured that the configuration also works.

## Setup

To setup my dotfiles, first clone the repository, prefferably like this:

```sh
git clone git@github.com:sebimohr/lnx_dotfiles.git ~/.dotfiles
```

Afterwards you can execute the install script.
Please note that you have to make it executable first:

```sh
sudo chmod +x ~/.dotfiles/install.sh
sh ~/.dotfiles/install.sh
```

The install script creates symlinks from the default locations into the `.dotfiles` directory.

> If you didn't clone the repository into the `.dotfiles` directory, please change the commands to use the correct path.

### Installing packages

You have to install following packages, that are available in the _extra_ or the _aur_ repositories:

- __Alacritty__: terminal emulator
- __Bat__: cat clone
- __Git__: version control system
- __Hyprland__: desktop environment / window manager
  - __Mako__: notification deamon
  - __Swaylock-effects__: screen lock
  - __Waybar__: wayland bar
  - __Wlogout__: button bar for logout, shutdown ...
  - __Wofi__: application launcher
- __Nvim__: editor
- __Zshell__: Unix-shell

## Additional Information

WIP.

