# ~/.dotfiles/install.sh
# This script should help you setup my dotfiles.

echo "Creating symlinks for dotfiles..."

script_directory=$(dirname "$0")

#ln -s $script_directory/themes $HOME/.themes
#ln -s $script_directory/nvim $HOME/.config/nvim
#ln -s $script_directory/alacritty $HOME/.config/alacritty/
ln -s $script_directory/zsh/.zshrc $HOME/.zshrc
ln -s $script_directory/zsh/.p10k.zsh $HOME/.p10k.zsh
ln -s $script_directory/git/.gitconfig $HOME/.gitconfig

