### TODO: check if statements below are still needed

# Has weird character width
# Example:
#    is not a diamond
# HAS_WIDECHARS="false"

# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi

# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Use powerline
USE_POWERLINE="true"

# plugins
source ~/powerlevel10k/powerlevel10k.zsh-theme

# aliases
alias vim='nvim'
alias vimdiff='nvim -d'
alias sudovim='sudo -E -s nvim'

# keybindings
bindkey "^[[1;5C" forward-word # CTRL + RIGHT
bindkey "^[[1;5D" backward-word # CTRL + LEFT
bindkey "^H" backward-kill-word # CTRL + BACKSPACE
bindkey "[3;5~" kill-word # CTRL + DELETE
# bindkey "\e" kill-whole-line # IDK

# exports
export EDITOR='nvim'
export VISUAL='$EDITOR'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Add GPG-key to terminal config
export GPG_TTY=$(tty)
