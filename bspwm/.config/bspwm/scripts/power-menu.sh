#!/bin/bash

# small power menu using rofi, i3, systemd and pm-utils
# (last 3 dependencies are adjustable below)
# tostiheld, 2016
# Source: https://github.com/tostiheld/dotfiles/blob/master/bin/power-menu.sh

poweroff_command="systemctl poweroff"
reboot_command="systemctl reboot"
logout_command="bspc quit"
lock_command="betterlockscreen -l blur"

#you can customise the rofi command all you want ...
rofi_command="rofi -lines 5 -width 10 -hide-scrollbar"

options=$'poweroff\nreboot\nlogout\nlock' 

# ... because the essential options (-dmenu and -p) are added here
eval \$"$(echo "$options" | $rofi_command -dmenu -p "")_command"
