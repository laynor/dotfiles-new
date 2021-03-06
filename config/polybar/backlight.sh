#!/usr/bin/env zsh
BRI=/sys/class/backlight/intel_backlight/brightness
MAXBRI=/sys/class/backlight/intel_backlight/max_brightness
function display_bri () {
    echo '%{F#FD0}'  '%{F#FFF}'$(((100 * `cat $BRI`)/`cat $MAXBRI`))%
}
display_bri
while inotifywait -qq -e close_write $BRI; do display_bri; done
