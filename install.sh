# ~/.dotfiles/install.sh
# This script should help you setup my dotfiles.

echo "Creating symlinks for dotfiles..."

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
CONFIG_DIR=".config"

# The symlinks define the original location where the config file is expected
# The targets define the location of the config files in the current directory
symlinks=(
    "$CONFIG_DIR/alacritty"
    "$CONFIG_DIR/bat"
    ".gitconfig"
    "$CONFIG_DIR/hypr"
    "$CONFIG_DIR/mako"
    "$CONFIG_DIR/nvim"
    "$CONFIG_DIR/nwg-bar"
    ".themes"
    "$CONFIG_DIR/waybar"
    ".zshrc"
    ".p10k.zsh"
)
targets=(
    "alacritty"
    "bat"
    "git/.gitconfig"
    "hypr"
    "mako"
    "nvim"
    "nwg-bar"
    "themes"
    "waybar"
    "zsh/.zshrc"
    "zsh/.p10k.zsh"
)

# Function for creating the symlink
create_symlink() {
    local symlink=$1
    local target=$2

    # Check if symlink exists
    if [ -L "$symlink" ]; then
        echo "Symlink already exists $symlink -> $(readlink $symlink)"
    else
        # Symlink doesn't exist, create it
        echo "Creating symlink: $symlink -> $target"
        ln -s "$target" "$symlink"
        echo "Symlink created: $symlink -> $target"
    fi
}

# loop through array, create / check all symlinks
for (( i=0; i<${#symlinks[@]}; i++ )); do
    symlink=${symlinks[$i]}
    target=${targets[$i]}
    create_symlink "$HOME/$symlink" "$SCRIPTPATH/$target"
done

