#!/usr/bin/env python
from i3ipc import Connection, Event
import os

# Create the Connection object that can be used to send commands and subscribe
# to events.
i3 = Connection()

def on_window_new(self, e):
    handle = e.ipc_data['container']['window']
    title  = e.ipc_data['container']['name']
    if title == 'Skype':
        xprop = os.popen('xprop -id %s' % handle).read()
        if not '_NET_WM_STATE_SKIP_TASKBAR' in xprop:
            e.container.command('floating disable')

i3.on(Event.WINDOW_NEW, on_window_new)

i3.main()
