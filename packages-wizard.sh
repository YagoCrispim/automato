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
	FALSE "Install Audacity" "Free, open source, cross-platform audio software."  \
	FALSE "Install Bleachbit" "BleachBit is a free and open-source disk space cleaner, privacy manager, and computer system optimizer."  \
	FALSE "Install Discord" "Your place to talk Whether you're part of a school club, gaming group and etc." \
	FALSE "Install Docker" "Docker deploys containers at all layers of the hybrid cloud."  \
	FALSE "Install Docker compose" "Docker Compose is a tool that was developed to help define and share multi-container applications."  \
	FALSE "Install GParted" "GNOME application for disk management."  \
	FALSE "Install GIT" "Code version manager."  \
	FALSE "Install Inkscape" "Inkscape is professional quality vector graphics software which runs on Linux, Mac OS X and Windows desktop computers."  \
	FALSE "Install KVM" "Kernel-based Virtual Machine."  \
	FALSE "Install Numix icons" "Numix icons package. "  \
	FALSE "Install NPM" "NodeJS Package Manager."  \
	FALSE "Install PlayOnLinux" "PlayOnLinux is a piece of software which allows you to easily install and use numerous games and apps designed to run with Microsoft® Windows®. "  \
	FALSE "Install Synaptic" "APT package manager."  \
	FALSE "Install Simple screen recorder" "Simple screen recorder."  \
	FALSE "Install Transmission" "Torrent client."  \
	FALSE "Install VLC" "Media player."  \
	FALSE "Install Ubuntu restricted extras" "Software package for Ubuntu that allows the user to install essential software which is not included due to legal or copyright reasons."  \
	FALSE "Install Yarn" "Package manager for NodeJS."  \
	FALSE "Run apt autoclean" "Remove obsolete deb packages."  \
	FALSE "Run apt autoremove" "Used to remove packages that have been installed automatically."  \
	FALSE "Run apt install -f" "Resolving broken packages."  \
	FALSE "Run apt update" "Updates local repositories."  \
	FALSE "Run apt upgrade" "Updates the system."  \
	--separator=', ');
clear

if [[ $GUI == *"Run apt update"* ]]
then
	echo "-------------------"
	echo "Running: apt update"
	echo "-------------------"
	sudo apt update
fi

if [[ $GUI == *"Run apt upgrade"* ]]
then
	echo "-------------------"
	echo "Running: apt upgrade"
	echo "-------------------"
	sudo apt upgrade -y
fi

if [[ $GUI == *"Run apt autoclean"* ]]
then
	echo "-------------------"
	echo "Installing: apt autoclean"
	echo "-------------------"
	sudo apt autoclean -y
fi

if [[ $GUI == *"Run apt autoremove"* ]]
then
	echo "-------------------"
	echo "Installing: apt autoremove"
	echo "-------------------"
	sudo apt autoremove -y
fi

if [[ $GUI == *"Install Inkscape"* ]]
then
	echo "-------------------"
	echo "Installing: Inkscape"
	echo "-------------------"
	sudo apt install -y inkscape
fi

if [[ $GUI == *"Install Bleachbit"* ]]
then
	echo "-------------------"
	echo "Installing: Bleachbit"
	echo "-------------------"
	sudo apt install -y bleachbit
fi

if [[ $GUI == *"Install PlayOnLinux"* ]]
then
	echo "-------------------"
	echo "Installing: PlayOnLinux"
	echo "-------------------"
	sudo apt install -y playonlinux
fi

if [[ $GUI == *"Install VLC"* ]]
then
	echo "-------------------"
	echo "Installing: VLC"
	echo "-------------------"
	sudo apt install -y vlc
fi

if [[ $GUI == *"Install Audacity"* ]]
then
	echo "-------------------"
	echo "Installing: Audacity"
	echo "-------------------"
	sudo apt install -y audacity
fi

if [[ $GUI == *"Install Synaptic"* ]]
then
	echo "-------------------"
	echo "Installing: Synaptic"
	echo "-------------------"
	sudo apt install -y synaptic
fi

if [[ $GUI == *"Install Transmission"* ]]
then
	echo "-------------------"
	echo "Installing: Transmission"
	echo "-------------------"
	sudo apt install -y transmission
fi

if [[ $GUI == *"Install NPM"* ]]
then
	echo "-------------------"
	echo "Installing: NPM"
	echo "-------------------"
	sudo apt install -y npm
fi

if [[ $GUI == *"Install Ubuntu restricted extras"* ]]
then
	echo "-------------------"
	echo "Installing: Ubuntu restricted extras"
	echo "-------------------"
	sudo apt install -y ubuntu-restricted-extras
fi

if [[ $GUI == *"Install Docker"* ]]
then
	echo "-------------------"
	echo "Installing: Docker"
	echo "-------------------"
	sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" -y
	sudo apt update
	apt-cache policy docker-ce
	sudo apt install docker-ce -y
fi

if [[ $GUI == *"Install Simple screen recorder"* ]]
then
	echo "-------------------"
	echo "Installing: Simple screen recorder"
	echo "-------------------"
	sudo apt install simplescreenrecorder -y
fi

if [[ $GUI == *"Install Numix icons"* ]]
then
	echo "-------------------"
	echo "Installing: Numix icons"
 	echo "-------------------"
 	sudo add-apt-repository ppa:numix/ppa -y
 	sudo apt update -y
 	sudo apt-get install numix-gtk-theme numix-icon-theme-circle numix-icon-theme-square -y
fi

if [[ $GUI == *"Install Docker compose"* ]]
then
 	echo "-------------------"
 	echo "Installing: Docker compose"
 	echo "-------------------"
 	sudo apt install docker-compose -y

if [[ $GUI == *"Install Yarn"* ]]
then
	echo "-------------------"
	echo "Installing: Yarn"
	echo "-------------------"
	sudo npm install --global yarn
fi

if [[ $GUI == *"Run apt install -f"* ]]
then
	echo "-------------------"
	echo "Running: apt install -f"
	echo "-------------------"
	sudo apt install -f -y
fi

if [[ $GUI == *"Install GParted"* ]]
then
	echo "-------------------"
	echo "Installing: GParted"
	echo "-------------------"
	sudo apt install gparted -y
fi

if [[ $GUI == *"Install KVM"* ]]
then
	echo "-------------------"
	echo "Installing: KVM"
	echo "-------------------"
	sudo apt install qemu-kvm -y
	sudo adduser $USER kvm
fi

if [[ $GUI == *"Install GIT"* ]]
then
	echo "-------------------"
	echo "Installinh: GIT"
	echo "-------------------"
	sudo apt install git -y
fi
