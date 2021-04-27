#!/bin/bash

# zenity
GUI=$(zenity --list --checklist \
	--height 700 \
	--width 1000 \
	--title="Debian based distros wizard" \
	--text "Select one or more actions to perform" \
	--column=Checkbox \
	--column=Actions \
	--column=Description \
	FALSE "Disable Desktop icons (GNOME)" "Desabilitar ìcones na área de trabalho."  \
	FALSE "Install Audacity" "Free, open source, cross-platform audio software."  \
	FALSE "Install Bleachbit" "BleachBit is a free and open-source disk space cleaner, privacy manager, and computer system optimizer."  \
	FALSE "Install Chrome Gnome extensions" "Enable GNOME extension support via Chrome ."  \
	FALSE "Install Dconf-editor" " Dconf Editor is a viewer and editor of applications internal settings."  \
	FALSE "Install Discord" "Your place to talk Whether you're part of a school club, gaming group and etc." \
	FALSE "Install Docker" "Docker deploys containers at all layers of the hybrid cloud."  \
	FALSE "Install Gnome tweak tool" "GNOME Tweaks tool is a must have utility for any GNOME user. It helps you configure looks and functionality of the desktop."  \
	FALSE "Install Inkscape" "Inkscape is professional quality vector graphics software which runs on Linux, Mac OS X and Windows desktop computers."  \
	FALSE "Install Mousepad" "Text editor"  \
	FALSE "Install Menulibre" "MenuLibre is an advanced FreeDesktop.org compliant menu editor."  \
	FALSE "Install NodeJS" "Node.js® is a JavaScript runtime built on Chrome's V8 JavaScript engine. "  \
	FALSE "Install NPM" "NodeJS Package Manager."  \
	FALSE "Install PlayOnLinux" "PlayOnLinux is a piece of software which allows you to easily install and use numerous games and apps designed to run with Microsoft® Windows®. "  \
	FALSE "Install Ristretto" "Image viewer."  \
	FALSE "Install Simple screen recorder" "Simple screen recorder."  \
	FALSE "Install Thunar" "File manager"  \
	FALSE "Install Transmission" "Torrent client."  \
	FALSE "Install Timeshift" "Timeshift for Linux is an application that provides functionality similar to the System Restore feature in Windows and the Time Machine tool in Mac OS."  \
	FALSE "Install VLC" "Media player."  \
	FALSE "Install Ubuntu restricted extras" "Software package for Ubuntu that allows the user to install essential software which is not included due to legal or copyright reasons."  \
	FALSE "Minimize on click" "Minimize on click(dash to dock)."  \
	FALSE "Remove mounted devices icons" "Remove os ícones de dispositivos montados."  \
	FALSE "Config mouse speed" "Synchronize mouse speed."  \
	--separator=', ');

# clean the terminal
clear

if [[ $GUI == *"Install Inkscape"* ]]
then
	echo "-------------------"
	echo "Installing: Inkscape"
	echo "-------------------"
	sudo pacman -S --noconfirm inkscape
fi

if [[ $GUI == *"Install Thunar"* ]]
then
	echo "-------------------"
	echo "Installing: Thunar"
	echo "-------------------"
	sudo pacman -S --noconfirm thunar
fi

if [[ $GUI == *"Install Bleachbit"* ]]
then
	echo "-------------------"
	echo "Installing: Bleachbit"
	echo "-------------------"
	sudo pacman -S --noconfirm bleachbit
fi

if [[ $GUI == *"Install Timeshift"* ]]
then
	echo "-------------------"
	echo "Installing: Timeshift"
	echo "-------------------"

sudo pacman -S --noconfirm timeshift
fi

if [[ $GUI == *"Install PlayOnLinux"* ]]
then
	echo "-------------------"
	echo "Installing: PlayOnLinux"
	echo "-------------------"
	sudo pacman -S --noconfirm playonlinux
fi

if [[ $GUI == *"Install Gnome tweak tool"* ]]
then
	echo "-------------------"
	echo "Installing: Gnome tweak tool"
	echo "-------------------"
	sudo pacman -S --noconfirm gnome-tweak-tool
fi

if [[ $GUI == *"Install VLC"* ]]
then
	echo "-------------------"
	echo "Installing: VLC"
	echo "-------------------"
	sudo pacman -S --noconfirm vlc
fi

if [[ $GUI == *"Install Audacity"* ]]
then
	echo "-------------------"
	echo "Installing: Audacity"
	echo "-------------------"
	sudo pacman -S --noconfirm audacity
fi

if [[ $GUI == *"Install Ristretto"* ]]
then
	echo "-------------------"
	echo "Installing: Ristretto"
	echo "-------------------"
	sudo pacman -S --noconfirm ristretto
fi

if [[ $GUI == *"Install Chrome Gnome extensions"* ]]
then
	echo "-------------------"
	echo "Installing: Chrome Gnome extensions"
	echo "-------------------"
	sudo pacman -S --noconfirm sudo apt-get install chrome-gnome-shell
fi

if [[ $GUI == *"Install Transmission"* ]]
then
	echo "-------------------"
	echo "Installing: Transmission"
	echo "-------------------"
	sudo pacman -S --noconfirm transmission
fi

if [[ $GUI == *"Install Mousepad"* ]]
then
	echo "-------------------"
	echo "Installing: Mousepad"
	echo "-------------------"
	sudo pacman -S --noconfirm mousepad
fi

if [[ $GUI == *"Install Menulibre"* ]]
then
	echo "-------------------"
	echo "Installing: Menulibre"
	echo "-------------------"
	sudo pacman -S --noconfirm menulibre
fi

if [[ $GUI == *"Install Dconf-editor"* ]]
then
	echo "-------------------"
	echo "Installing: Dconf-editor"
	echo "-------------------"
	sudo pacman -S --noconfirm dconf-editor
fi

if [[ $GUI == *"Install NodeJS"* ]]
then
	echo "-------------------"
	echo "Installing: NodeJS"
	echo "-------------------"
	sudo pacman -S --noconfirm nodejs
fi

if [[ $GUI == *"Install NPM"* ]]
then
	echo "-------------------"
	echo "Installing: NPM"
	echo "-------------------"
	sudo pacman -S --noconfirm npm
fi

if [[ $GUI == *"Install Ubuntu restricted extras"* ]]
then
	echo "-------------------"
	echo "Installing: Ubuntu restricted extras"
	echo "-------------------"
	sudo pacman -S --noconfirm ubuntu-restricted-extras
fi

if [[ $GUI == *"Minimize on click"* ]]
then
	echo "-------------------"
	echo "Running: Minimize on click"
	echo "-------------------"
	gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize-or-overview'
fi

if [[ $GUI == *"Disable Desktop icons"* ]]
then
	echo "-------------------"
	echo "Running: Disable Desktop icons"
	echo "-------------------"
fi

if [[ $GUI == *"Remove mounted devices icons"* ]]
then
	echo "-------------------"
	echo "Running: Remover ícones de dispositivos montados"
	echo "-------------------"
	gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts false
fi

if [[ $GUI == *"Install Docker"* ]]
then
	echo "-------------------"
	echo "Installing: Docker"
	echo "-------------------"
	sudo pacman -S docker --noconfirm
fi

if [[ $GUI == *"Run apt install -f"* ]]
then
	echo "-------------------"
	echo "Running: apt install -f"
	echo "-------------------"
	sudo pacman -S -f --noconfirm
fi

if [[ $GUI == *"Install Simple screen recorder"* ]]
then
	echo "-------------------"
	echo "Installing: Simple screen recorder"
	echo "-------------------"
	sudo pacman -S simplescreenrecorder --noconfirm
fi

Example
if [[ $GUI == *"Config mouse speed"* ]]
then
	echo "-------------------"
	echo "Configuring mouse speed"
	echo "-------------------"
	sudo xset m 1 1
fi

# Example
# if [[ $GUI == *"Install software xxxx"* ]]
# then
# 	echo "-------------------"
# 	echo "Installing: xxxx"
# 	echo "-------------------"
# 	sudo pacman -S xxxx --noconfirm
# fi
