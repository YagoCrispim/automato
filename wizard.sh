#!/bin/bash

# zenity
GUI=$(zenity --list --checklist \
	--height 200 \
	--width 700 \
	--title="Debian based distros wizard" \
	--text "Select one or more actions to perform" \
	--column=Checkbox \
	--column=Actions \
	--column=Description \
	FALSE "Run package wizard" "List with software to install and functions to run."  \
	FALSE "Folders sync" "Sync two different folders."  \
	--separator=', ');

clear

if [[ $GUI == *"Run package wizard"* ]]
then
	echo "-------------------"
	echo "Running: Package wizard"
	echo "-------------------"
	sudo ./scripts/packages-wizard.sh
fi

if [[ $GUI == *"Sync folders"* ]]
then
	echo "-------------------"
	echo "Running: Sync folders"
	echo "-------------------"
	./scripts/sync.sh

fi
