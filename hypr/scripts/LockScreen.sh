#!/bin/bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# For Swaylock

CONFIG="$HOME/.config/swaylock/config"

sleep 0.2s; swaylock --config ${CONFIG} & disown
