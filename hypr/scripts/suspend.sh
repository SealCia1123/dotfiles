#!/bin/bash
swayidle -w \
	timeout 300 ' swaylock -f --screenshots --effect-blur 10x3; sleep 4 ' \
	timeout 400 ' hyprctl dispatch dpms off' \
	timeout 12000 'systemctl suspend' \
	resume ' hyprctl dispatch dpms on' \
	before-sleep 'swaylock -f --screenshots --effect-blur 10x3; sleep 4'
