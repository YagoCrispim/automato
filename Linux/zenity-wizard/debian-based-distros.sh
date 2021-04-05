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
	FALSE "Instalar Audacity" "Software para edição de áudio."  \
	FALSE "Instalar Bleachbit" "Software similar o CCleaner."  \
	FALSE "Instalar Chrome Gnome extensions" "Extensões GNOME."  \
	FALSE "Instalar Dconf-editor" "Editor das configurações do GNOME."  \
	FALSE "Instalar Discord" "Programa de chat." \
	FALSE "Instalar Docker" "Conjunto de produtos que usam virtualização para entregar software em contêineres. "  \
	FALSE "Instalar Geany" "IDE para C/C++."  \
	FALSE "Instalar Gnome tweak tool" "Ferramenta para gerenciamento da interface GNOME."  \
	FALSE "Instalar Inkscape" "Software para edição de arquivos SVG."  \
	FALSE "Instalar Mousepad" "Editor de texto."  \
	FALSE "Instalar Menulibre" "Gerenciador de lançadores do menu."  \
	FALSE "Instalar NodeJS" "Ambiente de execução JavaScript."  \
	FALSE "Instalar NPM" "Gerenciador de pacotes para NodeJS."  \
	FALSE "Instalar PlayOnLinux" "Front-end para o wine."  \
	FALSE "Instalar Synaptic" "Gerenciador de pacotes."  \
	FALSE "Instalar Ristretto" "Visualizador de imagens."  \
	FALSE "Instalar Simple screen recorder" "Gravador de tela."  \
	FALSE "Instalar Thunar" "Explorador de arquivos."  \
	FALSE "Instalar Transmission" "Cliente torrent."  \
	FALSE "Instalar Timeshift" "Software para criar backups do sistema."  \
	FALSE "Instalar VLC" "Player de mídias."  \
	FALSE "Instalar Ubuntu restricted extras" "Pacote de software que permite instalar softwares que são restritos em alguns países."  \
	FALSE "Executar apt autoclean" "Comando usado para remover pacotes (.deb) obsoletos."  \
	FALSE "Executar apt autoremove" "Comando usado para remover pacotes que foram instalados automaticamente."  \
	FALSE "Executar apt install -f" "Resolver pacotes quebrados."  \
	FALSE "Executar apt update" "Atualiza os repositórios"  \
	FALSE "Executar apt upgrade" "Atualiza o sistema"  \
	FALSE "Minimize on click" "Minimizar a janela ao clicar no ícone do lançador."  \
	FALSE "Remover ícones de dispositivos montados" "Remove os ícones de dispositivos montados."  \
	--separator=', ');

# clean the terminal
clear

if [[ $GUI == *"Executar apt update"* ]]
then
	echo "-------------------"
	echo "Executando: apt update"
	echo "-------------------"
	sudo apt update
fi

if [[ $GUI == *"Executar apt upgrade"* ]]
then
	echo "-------------------"
	echo "Executando: apt upgrade"
	echo "-------------------"
	sudo apt upgrade -y
fi

if [[ $GUI == *"Executar apt autoclean"* ]]
then
	echo "-------------------"
	echo "Instalando: apt autoclean"
	echo "-------------------"
	sudo apt autoclean -y
fi

if [[ $GUI == *"Executar apt autoremove"* ]]
then
	echo "-------------------"
	echo "Instalando: apt autoremove"
	echo "-------------------"
	sudo apt autoremove -y
fi

if [[ $GUI == *"Instalar Audacity"* ]]
then
	echo "-------------------"
	echo "Instalando: Audacity"
	echo "-------------------"
	sudo apt install -y inkscape
fi

if [[ $GUI == *"Instalar Inkscape"* ]]
then
	echo "-------------------"
	echo "Instalando: Inkscape"
	echo "-------------------"
	sudo apt install -y thunar
fi

if [[ $GUI == *"Instalar Thunar"* ]]
then
	echo "-------------------"
	echo "Instalando: Thunar"
	echo "-------------------"
	sudo apt install -y bleachbit
fi

if [[ $GUI == *"Instalar Bleachbit"* ]]
then
	echo "-------------------"
	echo "Instalando: Bleachbit"
	echo "-------------------"

sudo apt install -y timeshift
fi

if [[ $GUI == *"Instalar Timeshift"* ]]
then
	echo "-------------------"
	echo "Instalando: Timeshift"
	echo "-------------------"
	sudo apt install -y playonlinux
fi

if [[ $GUI == *"Instalar PlayOnLinux"* ]]
then
	echo "-------------------"
	echo "Instalando: PlayOnLinux"
	echo "-------------------"
	sudo apt install -y gnome-tweak-tool
fi

if [[ $GUI == *"Instalar Gnome tweak tool"* ]]
then
	echo "-------------------"
	echo "Instalando: Gnome tweak tool"
	echo "-------------------"
	sudo apt install -y vlc
fi

if [[ $GUI == *"Instalar VLC"* ]]
then
	echo "-------------------"
	echo "Instalando: VLC"
	echo "-------------------"
	sudo apt install -y audacity
fi

if [[ $GUI == *"Instalar Ristretto"* ]]
then
	echo "-------------------"
	echo "Instalando: Ristretto"
	echo "-------------------"
	sudo apt install -y ristretto
fi

if [[ $GUI == *"Instalar Synaptic"* ]]
then
	echo "-------------------"
	echo "Instalando: Synaptic"
	echo "-------------------"
	sudo apt install -y synaptic
fi

if [[ $GUI == *"Instalar Chrome Gnome extensions"* ]]
then
	echo "-------------------"
	echo "Instalando: Chrome Gnome extensions"
	echo "-------------------"
	sudo apt install -y sudo apt-get install chrome-gnome-shell
fi

if [[ $GUI == *"Instalar Transmission"* ]]
then
	echo "-------------------"
	echo "Instalando: Transmission"
	echo "-------------------"
	sudo apt install -y transmission
fi

if [[ $GUI == *"Instalar Mousepad"* ]]
then
	echo "-------------------"
	echo "Instalando: Mousepad"
	echo "-------------------"
	sudo apt install -y mousepad
fi

if [[ $GUI == *"Instalar Menulibre"* ]]
then
	echo "-------------------"
	echo "Instalando: Menulibre"
	echo "-------------------"
	sudo apt install -y menulibre
fi

if [[ $GUI == *"Instalar Dconf-editor"* ]]
then
	echo "-------------------"
	echo "Instalando: Dconf-editor"
	echo "-------------------"
	sudo apt install -y dconf-editor
fi

if [[ $GUI == *"Instalar NodeJS"* ]]
then
	echo "-------------------"
	echo "Instalando: NodeJS"
	echo "-------------------"
	sudo apt install -y nodejs
fi

if [[ $GUI == *"Instalar NPM"* ]]
then
	echo "-------------------"
	echo "Instalando: NPM"
	echo "-------------------"
	sudo apt install -y npm
fi

if [[ $GUI == *"Instalar Ubuntu restricted extras"* ]]
then
	echo "-------------------"
	echo "Instalando: Ubuntu restricted extras"
	echo "-------------------"
	sudo apt install -y ubuntu-restricted-extras
fi

if [[ $GUI == *"Instalar Geany"* ]]
then
	echo "-------------------"
	echo "Instalando: Geany"
	echo "-------------------"
	sudo apt install -y geany
fi

if [[ $GUI == *"Instalar Numix Circle Icon/Theme"* ]]
then
	echo "-------------------"
	echo "Instalando: Numix Circle Icon/Theme"
	echo "-------------------"
	sudo add-apt-repository ppa:numix/ppa -y
	sudo apt update
	sudo apt-get install numix-gtk-theme numix-icon-theme-circle -y
fi

if [[ $GUI == *"Minimize on click"* ]]
then
	echo "-------------------"
	echo "Executando: Minimize on click"
	echo "-------------------"
	gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize-or-overview'
fi

if [[ $GUI == *"Disable Desktop icons"* ]]
then
	echo "-------------------"
	echo "Executando: Disable Desktop icons"
	echo "-------------------"
fi

if [[ $GUI == *"Remover ícones de dispositivos montados"* ]]
then
	echo "-------------------"
	echo "Executando: Remover ícones de dispositivos montados"
	echo "-------------------"
	gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts false
fi

if [[ $GUI == *"Remover ícones de dispositivos montados"* ]]
then
	echo "-------------------"
	echo "Executando: Remover ícones de dispositivos montados"
	echo "-------------------"
	gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts false
fi

if [[ $GUI == *"Remover ícones de dispositivos montados"* ]]
then
	echo "-------------------"
	echo "Executando: Remover ícones de dispositivos montados"
	echo "-------------------"
	gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts false
fi

if [[ $GUI == *"Instalar Docker"* ]]
then
	echo "-------------------"
	echo "Instalando: Docker"
	echo "-------------------"
	sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" -y
	sudo apt update
	apt-cache policy docker-ce
	sudo apt install docker-ce -y
fi

if [[ $GUI == *"Executar apt install -f"* ]]
then
	echo "-------------------"
	echo "Executando: apt install -f"
	echo "-------------------"
	sudo apt install -f -y
fi

if [[ $GUI == *"Instalar Simple screen recorder"* ]]
then
	echo "-------------------"
	echo "Instalando: Simple screen recorder"
	echo "-------------------"
	sudo apt install simplescreenrecorder -y
fi

if [[ $GUI == *"Instalar Discord"* ]]
then
	echo "-------------------"
	echo "Instalando: Simple screen recorder"
	echo "-------------------"
	sudo apt install simplescreenrecorder -y
fi

# Example
# if [[ $GUI == *"Install software xxxx"* ]]
# then
# 	echo "-------------------"
# 	echo "Installing: xxxx"
# 	echo "-------------------"
# 	sudo apt install xxxx -y
# fi
