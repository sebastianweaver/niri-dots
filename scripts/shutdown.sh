#!/bin/bash

SELECTION="$(printf "1 - Lock
2 - Suspend
3 - Log out
4 - Reboot
5 - Reboot to UEFI
6 - Hard reboot
7 - Shutdown" | fuzzel --dmenu -l 7 -p "⏻ >  ")"

case $SELECTION in
	*"Lock")
		swaylock;;
	*"Suspend")
		systemctl suspend;;
	*"Log out")
		niri msg action quit;;
	*"Reboot")
		systemctl reboot;;
	*"Reboot to UEFI")
		systemctl reboot --firmware-setup;;
	*"Hard reboot")
		pkexec "echo b > /proc/sysrq-trigger";;
	*"Shutdown")
		systemctl poweroff;;
esac
