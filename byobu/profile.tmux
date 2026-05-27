source $BYOBU_PREFIX/share/byobu/profiles/tmux
set-option -g default-shell /usr/bin/nu
set-option -g default-command /usr/bin/nu
set -g pane-active-border-style "fg=default,bg=magenta"
set -g extended-keys always
set -as terminal-features 'xterm*:extkeys'
