#!/bin/bash

LAPTOP_SCREEN="eDP-1"
EXTERNAL_SCREEN="HDMI-A-1"

# Check if the external monitor is connected
if hyprctl monitors | grep -q "$EXTERNAL_SCREEN"; then
    hyprctl keyword monitor "$LAPTOP_SCREEN, disable"
    hyprctl keyword monitor "$EXTERNAL_SCREEN, 2560x1440@144, 0x0, 1.0"
else
    hyprctl keyword monitor "$LAPTOP_SCREEN, 1920x1080@144, 0x0, 1.0"
    hyprctl keyword monitor "$EXTERNAL_SCREEN, disable"
fi

