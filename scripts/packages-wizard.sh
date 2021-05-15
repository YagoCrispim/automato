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
	FALSE "Disable Desktop icons (GNOME)" "Hide desktop icons."  \
	FALSE "Install Audacity" "Free, open source, cross-platform audio software."  \
	FALSE "Install Bleachbit" "BleachBit is a free and open-source disk space cleaner, privacy manager, and computer system optimizer."  \
	FALSE "Install Chrome Gnome extensions" "Enable GNOME extension support via Chrome ."  \
	FALSE "Install Dconf-editor" "Dconf Editor is a viewer and editor of applications internal settings."  \
	FALSE "Install Discord" "Your place to talk Whether you're part of a school club, gaming group and etc." \
	FALSE "Install Docker" "Docker deploys containers at all layers of the hybrid cloud."  \
	FALSE "Install Docker compose" "Docker Compose is a tool that was developed to help define and share multi-container applications."  \
	FALSE "Install Gnome tweak tool" "GNOME Tweaks tool is a must have utility for any GNOME user. It helps you configure looks and functionality of the desktop."  \
	FALSE "Install Inkscape" "Inkscape is professional quality vector graphics software which runs on Linux, Mac OS X and Windows desktop computers."  \
	FALSE "Install Mousepad" "Text editor"  \
	FALSE "Install Menulibre" "MenuLibre is an advanced FreeDesktop.org compliant menu editor."  \
	FALSE "Install NodeJS" "Node.js® is a JavaScript runtime built on Chrome's V8 JavaScript engine. "  \
	FALSE "Install Numix icons" "Numix icons package. "  \
	FALSE "Install NPM" "NodeJS Package Manager."  \
	FALSE "Install PlayOnLinux" "PlayOnLinux is a piece of software which allows you to easily install and use numerous games and apps designed to run with Microsoft® Windows®. "  \
	FALSE "Install Synaptic" "APT package manager."  \
	FALSE "Install Ristretto" "Image viewer."  \
	FALSE "Install Simple screen recorder" "Simple screen recorder."  \
	FALSE "Install Thunar" "File manager"  \
	FALSE "Install Transmission" "Torrent client."  \
	FALSE "Install Timeshift" "Timeshift for Linux is an application that provides functionality similar to the System Restore feature in Windows and the Time Machine tool in Mac OS."  \
	FALSE "Install VLC" "Media player."  \
	FALSE "Install Ubuntu restricted extras" "Software package for Ubuntu that allows the user to install essential software which is not included due to legal or copyright reasons."  \
	FALSE "(SNAP) Install VSCode" "Visual Studio Code is a code editor redefined and optimized for building and debugging modern web and cloud applications."  \
	FALSE "(SNAP) Install Opera" "Web browser."  \
	FALSE "(SNAP) Install Sublime Text" "Code editor"  \
	FALSE "(SNAP) Install Android Studio" "IDE for Android development."  \
	FALSE "(SNAP) Install Insomnia" "REST client."  \
	FALSE "(SNAP) Install Whatsie" "WhatsApp client."  \
	FALSE "(SNAP) Install WPS Office" "Office suite."  \
	FALSE "Install Yarn" "Package manager for NodeJS."  \
	FALSE "Run apt autoclean" "Remove obsolete deb packages."  \
	FALSE "Run apt autoremove" "Used to remove packages that have been installed automatically."  \
	FALSE "Run apt install -f" "Resolving broken packages."  \
	FALSE "Run apt update" "Updates local repositories."  \
	FALSE "Run apt upgrade" "Updates the system."  \
	FALSE "Minimize on click" "Minimize on click(dash to dock)."  \
	FALSE "Remove mounted devices icons" "Remove mounted devices icon."  \
	FALSE "Config mouse speed" "Synchronize mouse speed."  \
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

if [[ $GUI == *"Install Thunar"* ]]
then
	echo "-------------------"
	echo "Installing: Thunar"
	echo "-------------------"
	sudo apt install -y thunar
fi

if [[ $GUI == *"Install Bleachbit"* ]]
then
	echo "-------------------"
	echo "Installing: Bleachbit"
	echo "-------------------"
	sudo apt install -y bleachbit
fi

if [[ $GUI == *"Install Timeshift"* ]]
then
	echo "-------------------"
	echo "Installing: Timeshift"
	echo "-------------------"

sudo apt install -y timeshift
fi

if [[ $GUI == *"Install PlayOnLinux"* ]]
then
	echo "-------------------"
	echo "Installing: PlayOnLinux"
	echo "-------------------"
	sudo apt install -y playonlinux
fi

if [[ $GUI == *"Install Gnome tweak tool"* ]]
then
	echo "-------------------"
	echo "Installing: Gnome tweak tool"
	echo "-------------------"
	sudo apt install -y gnome-tweak-tool
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

if [[ $GUI == *"Install Ristretto"* ]]
then
	echo "-------------------"
	echo "Installing: Ristretto"
	echo "-------------------"
	sudo apt install -y ristretto
fi

if [[ $GUI == *"Install Synaptic"* ]]
then
	echo "-------------------"
	echo "Installing: Synaptic"
	echo "-------------------"
	sudo apt install -y synaptic
fi

if [[ $GUI == *"Install Chrome Gnome extensions"* ]]
then
	echo "-------------------"
	echo "Installing: Chrome Gnome extensions"
	echo "-------------------"
	sudo apt install -y chrome-gnome-shell
fi

if [[ $GUI == *"Install Transmission"* ]]
then
	echo "-------------------"
	echo "Installing: Transmission"
	echo "-------------------"
	sudo apt install -y transmission
fi

if [[ $GUI == *"Install Mousepad"* ]]
then
	echo "-------------------"
	echo "Installing: Mousepad"
	echo "-------------------"
	sudo apt install -y mousepad
fi

if [[ $GUI == *"Install Menulibre"* ]]
then
	echo "-------------------"
	echo "Installing: Menulibre"
	echo "-------------------"
	sudo apt install -y menulibre
fi

if [[ $GUI == *"Install Dconf-editor"* ]]
then
	echo "-------------------"
	echo "Installing: Dconf-editor"
	echo "-------------------"
	sudo apt install -y dconf-editor
fi

if [[ $GUI == *"Install NodeJS"* ]]
then
	echo "-------------------"
	echo "Installing: NodeJS"
	echo "-------------------"
	sudo apt install -y nodejs
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

if [[ $GUI == *"Config mouse speed"* ]]
then
	echo "-------------------"
	echo "Configuring mouse speed"
	echo "-------------------"
	sudo xset m 1 1
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

if [[ $GUI == *"(SNAP) Install VSCode"* ]]
then
 	echo "-------------------"
 	echo "Installing: VSCode"
 	echo "-------------------"
 	sudo snap install code --classic
fi

if [[ $GUI == *"(SNAP) Install Opera"* ]]
then
 	echo "-------------------"
 	echo "Installing: Opera"
 	echo "-------------------"
 	sudo snap install opera
fi

if [[ $GUI == *"(SNAP) Install Sublime Text"* ]]
then
 	echo "-------------------"
 	echo "Installing: Sublime Text"
 	echo "-------------------"
 	sudo snap install sublime-text --classic
fi

if [[ $GUI == *"(SNAP) Install Android Studio"* ]]
then
 	echo "-------------------"
 	echo "Installing: Android Studio"
 	echo "-------------------"
 	sudo snap install android-studio --classic
fi

if [[ $GUI == *"(SNAP) Install Insomnia"* ]]
then
 	echo "-------------------"
 	echo "Installing: Insomnia"
 	echo "-------------------"
 	sudo snap install insomnia
fi

if [[ $GUI == *"(SNAP) Install WPS Office"* ]]
then
 	echo "-------------------"
 	echo "Installing: WPS Office"
 	echo "-------------------"
 	sudo snap install wps-2019-snap
fi

if [[ $GUI == *"(SNAP) Install Whatsie"* ]]
then
 	echo "-------------------"
 	echo "Installing: Whatsie"
 	echo "-------------------"
 	sudo snap install whatsie
fi

if [[ $GUI == *"Install Yarn"* ]]
then
	echo "-------------------"
	echo "Installing: Yarn"
	echo "-------------------"
	curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add && echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list && sudo apt update && sudo apt install yarn -y --no-install-recommends
fi

if [[ $GUI == *"Run apt install -f"* ]]
then
	echo "-------------------"
	echo "Running: apt install -f"
	echo "-------------------"
	sudo apt install -f -y
fi


#if [[ $GUI == *"Install software xxxx"* ]]
#then
# 	echo "-------------------"
# 	echo "Installing: xxxx"
# 	echo "-------------------"
# 	sudo apt install xxxx -y
#fi
