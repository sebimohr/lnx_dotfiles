### TODO: check if statements below are still needed

# Has weird character width
# Example:
#    is not a diamond
# HAS_WIDECHARS="false"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Source manjaro-zsh-configuration
if [[ -e ~/.config/zsh/manjaro-zsh-config ]]; then
  source ~/.config/zsh/manjaro-zsh-config
fi

# Use manjaro zsh prompt
if [[ -e ~/.config/zsh/manjaro-zsh-prompt ]]; then
  source ~/.config/zsh/manjaro-zsh-prompt
fi

# Use powerline
USE_POWERLINE="true"

# plugins
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# aliases
source ~/.config/zsh/.zshAlias

# keybindings
source ~/.config/zsh/.zshBindings

# exports
source ~/.config/zsh/.zshExports

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
