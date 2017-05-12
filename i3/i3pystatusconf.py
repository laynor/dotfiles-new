from i3pystatus import Status
import os

HOSTNAME=os.getenv('HOSTNAME')
status = Status()

# Displays clock like this:
# Tue 30 Jul 11:59:46 PM KW31
#                          ^-- calendar week
status.register("clock",
                format="%a %Y-%m-%d %X KW%V",)

BLACK="#0e1614"
MIDGREEN="#57e09e"

def run_xterm(*args):
    os.system("xterm")

def run(command):
    def run2():
        return os.system(command)
    return run2

# This would look like this:
# Discharging 6h:51m
if HOSTNAME == 'pignegna':
    status.register("battery",
                    format="{status} {remaining:%E%hh:%Mm}",
                    alert=True,
                    full_color=BLACK,
                    charging_color=MIDGREEN,
                    alert_percentage=10,
                    status={
                        "DIS":  "🔋",
                        "CHR":  "🔌🔋",
                        "FULL": "🔌",
                    },)

# Note: requires both netifaces and basiciw (for essid and quality)
if HOSTNAME=='pignegna':
    status.register("network",
                    color_up=MIDGREEN,
                    interface="wlp3s0",
                    format_up=u"\uf1eb {essid} {quality:03.0f}%",)
else:
    status.register("network",
                    color_up=MIDGREEN,
                    interface='enp2s0',
                    format_up='{kbs}')

# Displays whether a DHCP client is running
status.register("runwatch",
                name="D",
                color_up=MIDGREEN,
                path="/var/run/dhcp*.pid",)

# Shows the average load of the last minute and the last 5 minutes
# (the default value for format is used)
status.register("load",
                format=u"\uf0e4 {avg1} {avg5}")
# Shows your CPU temperature, if you have a Intel CPU

status.register("temp",
                format=u"\uf2c9 {temp:.0f}°C",)

status.register("mem_bar",
                color=MIDGREEN)

if HOSTNAME == 'pignegna':
    status.register("disk",
                    path="/mnt/Mufu",
                    on_leftclick=run("dolphin /"),
                    format=u"\uf0a0 {avail}G")

    status.register("disk",
                    path="/home",
                    on_leftclick=run("dolphin $HOME"),
                    format=u"\uf015 {avail}G",)

# Shows disk usage of /
# Format:
# 42/128G [86G]
status.register("disk",
                path="/",
                format=u"\uf2db {avail}G",)


# Shows pulseaudio default sink volume
#
# Note: requires libpulseaudio from PyPI
status.register("pulseaudio",
                format="🔈{volume}",)

# Shows mpd status
# Format:
# Cloud connected▶Reroute to Remain
status.register("mpd",
                format="{title}{status}{album}",
                status={
                    "pause": "▷",
                    "play": "▶",
                    "stop": "◾",
                },)

status.run()

# The battery monitor has many formatting options, see README for details

# This would look like this, when discharging (or charging)
# ↓14.22W 56.15% [77.81%] 2h:41m
# And like this if full:
# =14.22W 100.0% [91.21%]
#
# This would also display a desktop notification (via D-Bus) if the percentage
# goes below 5 percent while discharging. The block will also color RED.
# If you don't have a desktop notification demon yet, take a look at dunst:
#   http://www.knopwob.org/dunst/
# status.register("battery",
#                 format="{status}/{consumption:.2f}W {percentage:.2f}% [{percentage_design:.2f}%] {remaining:%E%hh:%Mm}",
#                 alert=True,
#                 alert_percentage=5,
#                 status={
#                     "DIS": "↓",
#                     "CHR": "↑",
#                     "FULL": "=",
#                 },)


# Shows the address and up/down state of eth0. If it is up the address is shown in
# green (the default value of color_up) and the CIDR-address is shown
# (i.e. 10.10.10.42/24).
# If it's down just the interface name (eth0) will be displayed in red
# (defaults of format_down and color_down)
#
# Note: the network module requires PyPI package netifaces
# status.register("network",
#     interface="eth0",
#     format_up="{v4cidr}",)
