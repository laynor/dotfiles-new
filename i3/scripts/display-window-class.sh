#!/usr/bin/env sh
notify-send "`(xprop | grep CLASS) & $(sleep 0.2 ; xdotool click 1)`"
