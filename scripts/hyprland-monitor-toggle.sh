#!/usr/bin/env bash

# Check if eDP-1 is enabled by searching for it in hyprctl monitors output
if hyprctl monitors | grep -q "eDP-1"; then
    # If eDP-1 is enabled, disable it
    hyprctl keyword monitor "eDP-1,disable"
else
    # If eDP-1 is disabled, enable it with specified settings
    hyprctl keyword monitor "eDP-1,1920x1080@60,0x1100,1"
fi
