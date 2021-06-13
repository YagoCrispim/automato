#!/bin/bash

# zenity
GUI=$(zenity --list --checklist \
	--height 300 \
	--width 700 \
	--title="Debian based distros wizard" \
	--text "Select one or more actions to perform" \
	--column=Checkbox \
	--column=Actions \
	--column=Description \
	FALSE "Run package wizard" "List with software to install and functions to run."  \
	FALSE "GNOME restart" "Set Alt + CTRL + 1 to restart GNOME if it freezes."  \
	FALSE "Folders sync" "Sync two different folders."  \
	FALSE "Install Python dev environment" "Python dev environment."  \
	FALSE "Install VueJS dev environment" "Python dev environment."  \
	--separator=', ');

clear

if [[ $GUI == *"Run package wizard"* ]]
then
	echo "-------------------"
	echo "Running: Package wizard"
	echo "-------------------"
	sudo ./scripts/packages-wizard.sh
fi

if [[ $GUI == *"GNOME restart"* ]]
then
	echo "-------------------"
	echo "Running: GNOME restart"
	echo "-------------------"
	sudo cp ./scripts/gnome-restart.sh /usr/bin/
	python3 ./services/shortcut_creator.py 'GNOME restart' '/usr/bin/gnome-restart.sh' '<ALT><CTRL>1'

fi

if [[ $GUI == *"Sync folders"* ]]
then
	echo "-------------------"
	echo "Running: Sync folders"
	echo "-------------------"
	./scripts/sync.sh

fi

if [[ $GUI == *"Install Python dev environment"* ]]
then
	echo "-------------------"
	echo "Running: Install Python dev environment"
	echo "-------------------"
	./scripts/python-dev-env.sh

fi

if [[ $GUI == *"Install VueJS dev environment"* ]]
then
	echo "-------------------"
	echo "Running: Install VueJS dev environment"
	echo "-------------------"
	./scripts/vue-env.sh

fi
