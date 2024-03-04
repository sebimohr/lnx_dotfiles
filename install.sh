# ~/.dotfiles/install.sh
# This script should help you setup my dotfiles.

echo "Creating symlinks for dotfiles..."

DOTFILES_DIR="~/.dotfiles"

ln -s $DOTFILES_DIR/themes/* ~/.themes
ln -s $DOTFILES_DIR/nvim/* ~/.config/nvim/
ln -s $DOTFILES_DIR/alacritty/* ~/.config/alacritty/
ln -s $DOTFILES_DIR/zsh/.zshrc ~/.zshrc
ln -s $DOTFILES_DIR/zsh/.p10k.zsh ~/.p10k.zsh

