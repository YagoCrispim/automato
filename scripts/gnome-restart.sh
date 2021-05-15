#!/bin/bash

# -----------

# en
# Restart GNOME Shell if it freezes or becomes unresponsive
# Create a shortcut to run this script.

# pt-Br
# Reseta o GNOME shel caso ele congele ou não responda.
# Crie um atalho para executar este script.

# -----------

killall -3 gnome-shell & wait
xdotool set_desktop 1
