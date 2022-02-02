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
	TRUE "Add user to Docker group" "Run Docker without sudo."  \
	TRUE "Install Audacity" "Free, open source, cross-platform audio software."  \
	TRUE "Install Bleachbit" "BleachBit is a free and open-source disk space cleaner, privacy manager, and computer system optimizer."  \
	TRUE "Install Docker" "Docker deploys containers at all layers of the hybrid cloud."  \
	TRUE "Install Docker compose" "Docker Compose is a tool that was developed to help define and share multi-container applications."  \
	TRUE "Install GParted" "GNOME application for disk management."  \
	TRUE "Install GIT" "Code version manager."  \
	TRUE "Install Inkscape" "Inkscape is professional quality vector graphics software which runs on Linux, Mac OS X and Windows desktop computers."  \
	FALSE "Install KVM" "Kernel-based Virtual Machine."  \
	TRUE "Install Numix icons" "Numix icons package. "  \
	TRUE "Install Neovim (unstable)" "VIM based text editor."  \
	TRUE "Install NPM" "NodeJS Package Manager."  \
	TRUE "Install ZSH" "ZSH terminal (base for OhMyZSH)."  \
	TRUE "Install Plank" "Plank dock"  \
	TRUE "Install PlayOnLinux" "PlayOnLinux is a piece of software which allows you to easily install and use numerous games and apps designed to run with Microsoft® Windows®. "  \
	TRUE "Install Synaptic" "APT package manager."  \
	TRUE "Install Simple screen recorder" "Simple screen recorder."  \
	TRUE "Install Transmission" "Torrent client."  \
	TRUE "Install VLC" "Media player."  \
	TRUE "Install Ubuntu restricted extras" "Software package for Ubuntu that allows the user to install essential software which is not included due to legal or copyright reasons."  \
	TRUE "Install Yarn" "Package manager for NodeJS."  \
	TRUE "Run apt autoclean" "Remove obsolete deb packages."  \
	TRUE "Run apt autoremove" "Used to remove packages that have been installed automatically."  \
	TRUE "Run apt install -f" "Resolving broken packages."  \
	TRUE "Run apt update" "Updates local repositories."  \
	TRUE "Run apt upgrade" "Updates the system."  \
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
fi

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
	echo "Installing: GIT"
	echo "-------------------"
	sudo apt install git -y
fi

if [[ $GUI == *"Add user to Docker group"* ]]
then
	echo "-------------------"
	echo "Running: Add user to Docker group"
	echo "-------------------"
	sudo usermod -aG docker $USER && sudo gpasswd -a $USER docker
fi

if [[ $GUI == *"Install Neovim (unstable)"* ]]
then
	echo "-------------------"
	echo "Installing: Neovim"
	echo "-------------------"
	sudo add-apt-repository -y ppa:neovim-ppa/unstable
	sudo apt update
	sudo apt install -y neovim
fi

if [[ $GUI == *"Install ZSH"* ]]
then
	echo "-------------------"
	echo "Installing: ZSH"
	echo "-------------------"
	sudo apt install -y zsh
fi

if [[ $GUI == *"Install PlayOnLinux"* ]]
then
	echo "-------------------"
	echo "Installing: PlayOnLinux"
	echo "-------------------"
	sudo apt install -y playonlinux
fi

if [[ $GUI == *"Install Plank"* ]]
then
	echo "-------------------"
	echo "Installing: Plank"
	echo "-------------------"
	sudo apt install -y plank
fi
