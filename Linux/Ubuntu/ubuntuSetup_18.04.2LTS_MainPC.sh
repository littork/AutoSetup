#!/bin/bash
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Welcome to Littork's Ubuntu Setup Script"
echo "Checkup will update, upgrade, and autoremove"
echo "Original Install will set the computer up for use"
echo "Use the Y or N key to answer questions"
echo
read -p "(1) Checkup or (2) Original Install " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[2]$ ]]
then
	echo "Beginning Original Install"

	echo "Installing dependencies"
	sudo apt install -y xterm;
	sudo xterm -geometry 75x25+100+100 -T "Installing dependencies" -e "
	sudo apt install -y curl;

	sleep 3;
	"
	sleep 0.25
	
	echo "Adding helpful repositories"

	sudo xterm -geometry 75x25+100+100 -T "Adding helpful repositories" -e "

	sudo rm /etc/apt/sources.list.d/google-chrome*;

	sleep 3;
	"
	sleep 0.25

	echo "Updating..."

	sudo xterm -geometry 75x25+100+100 -T "Updating" -e "
	sudo apt update -y;
	sleep 3;
	"
	sleep 0.25

	read -p "Install ubuntu-gnome-desktop? (Over Unity) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Installing Ubuntu-Gnome-Desktop" -e "
		sudo apt install -y ubuntu-gnome-desktop;
		sleep 1;
		"
		sleep 0.25
		echo "Installed Ubuntu-Gnome-Desktop"
	fi

	echo "Removing dead weight that comes with Ubuntu"
	sudo xterm -geometry 75x25+100+100 -T "Removing garbage programs" -e "
	sudo apt remove -y --auto-remove account-plugin-aim account-plugin-facebook account-plugin-flickr account-plugin-jabber account-plugin-salut account-plugin-yahoo aisleriot gnome-mahjongg gnome-mines gnome-sudoku landscape-client-ui-install unity-lens-music unity-lens-photos unity-lens-video firefox unity-webapps-common evolution empathy rhythmbox libreoffice* cheese activity-log-manager brasero gnome-calendar checkbox-* gnome-contacts gnome-documents gnome-maps gnome-music onboard gnome-online-accounts gnome-photos remmina shotwell simple-scan gnome-orca thunderbird transmission* evince eog seahorse gnome-screenshot gnome-weather totem xdiagnose webbrowser-app;
	sleep 1;
	"
	sleep 0.25

	sudo rm google-chrome*.deb &>/dev/null
	read -p "Install google chrome? " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Installing Google Chrome" -e "
		sudo apt install -y libxss1 libappindicator1 libindicator7;
		wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb;
		sudo dpkg -i google-chrome*.deb;
		sudo rm google-chrome*.deb;
		sleep 1;
		"
		sleep 0.25
		echo "Installed Google Chrome"
	fi
	
	sudo rm discord.deb &>/dev/null
	read -p "Install Discord? (A nice communication client) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Installing Discord" -e "
		sudo apt install -y libc++1;
		wget -O discord.deb \"https://discordapp.com/api/download?platform=linux&format=deb\";
		sudo dpkg -i discord.deb;
		sleep 1;
		sudo rm discord.deb;
		sleep 5;
		"
		sleep 0.25
		echo "Installed Discord"
	fi

	read -p "Install MacChanger? (Helps keep your MAC Address anonymous) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Installing MacChanger" -e "
		sudo apt install -y macchanger;
		sleep 5;
		"
		sleep 0.25
		echo "Installed MacChanger"
	fi

	read -p "Install Steam? (Gaming Platform) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Installing Steam" -e "
		sudo apt install -y steam;
		sleep 1;
		"
		sleep 0.25
		echo "Installed Steam"
	fi

	read -p "Install MediaInfo Commandline? (Tells you info about a video or photo) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Installing MediaInfo" -e "
		sudo apt install -y mediainfo;
		sleep 1;
		"
		sleep 0.25
		echo "Installed MediaInfo"
	fi

	read -p "Install HTOP? (RAM and CPU usage monitor) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Installing HTOP" -e "
		sudo apt install -y htop;
		sleep 1;
		"
		sleep 0.25
		echo "Installed HTOP"
	fi

	read -p "Install GParted? (Partition editor) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Installing GParted" -e "
		sudo apt install -y gparted;
		sleep 1;
		"
		sleep 0.25
		echo "Installed GParted"
	fi

	read -p "Install VLC Media Player? (The best media viewer) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Installing VLC" -e "
		sudo apt install -y vlc;
		sleep 1;
		"
		sleep 0.25
		echo "Installed VLC"
	fi

	read -p "Install Fail2Ban? (Prevents Brute-Force SSH attacks) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Installing Fail2Ban" -e "
		sudo apt install -y fail2ban;
		sleep 1;
		"
		sleep 0.25
		echo "Installed Fail2Ban"
	fi

	read -p "Install SSH? (For remote command line access) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Installing SSH" -e "
		sudo apt install -y ssh;
		sleep 1;
		"
		sleep 0.25
		echo "Installed SSH"
	fi

	read -p "Install GPicView? (For photo viewing) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Installing GPicView" -e "
		sudo apt install -y gpicview;
		sleep 1;
		"
		sleep 0.25
		echo "Installed GPicView"
	fi

	read -p "Install Youtube-DL? (For video downloading) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Installing Youtube-DL" -e "
		sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl;
		sudo chmod a+rx /usr/local/bin/youtube-dl;
		sleep 5;
		"
		sleep 0.25
		echo "Installed Youtube-DL"
	fi

	read -p "Install Shutter? (For screenshots) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Installing Shutter" -e "
		sudo apt install -y shutter;
		sleep 1;
		"
		sleep 0.25
		echo "Installed Shutter"
	fi

	read -p "Install Redshift? (f.lux for linux) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Installing Redshift" -e "
		sudo apt install -y redshift;
		sleep 1;
		"
		sleep 0.25
		echo "Installed Redshift"
	fi

	echo "Installing Preload and UReadAhead (Performance Boosts)"
	sudo xterm -geometry 75x25+100+100 -T "Installing Preload" -e "
	sudo apt install -y preload ureadahead;
	sleep 1;
	"
	sleep 0.25

	echo "Removing SSH Server (You can add it back by typing \"sudo apt install openssh-server\")"
	sudo xterm -geometry 75x25+100+100 -T "Removing SSH Server" -e "
	sudo apt remove -y openssh-server
	sleep 1;
	"
	sleep 0.25

	echo "Removing DBus-User-Session (Prevents a keyring bug)"
	sudo xterm -geometry 75x25+100+100 -T "Preventing Keyring Bug" -e "
	sudo apt remove -y --purge dbus-user-session
	sleep 1;
	"
	sleep 0.25

	echo "Installing packages which were not installed because they did not have the required dependencies (If there are any)"
	sudo xterm -geometry 75x25+100+100 -T "Installing failed installations" -e "
	sudo apt install -y -f
	sleep 5;
	"
	sleep 0.25

	echo "Upgrading..."
	sudo xterm -geometry 75x25+100+100 -T "Upgrading" -e "
	sudo apt upgrade -y
	sleep 1;
	"
	sleep 0.25

	echo "Autoremoving useless dependencies"
	sudo xterm -geometry 75x25+100+100 -T "Autoremoving" -e "
	sudo apt autoremove -y
	sleep 1;
	"
	sleep 0.25

	echo "It would be in your best interests to reboot now"
	echo "Go through the tweak tool, and set your desktop background"
	echo ""
	echo "If you have an NVIDIA card, run \"sudo ubuntu-drivers devices\" then run \"sudo apt install <Name of NVIDIA-___ Driver>\""
	echo ""
	echo "By default, Ubuntu uses a generic driver called Nouveau that is not optimal"
else
	echo "Beginning checkup"

	echo "Updating..."
	sudo xterm -e "
	sudo apt update -y;
	sleep 1;
	"

	echo "Patching bugs"
	sudo xterm -e "
	sudo rm /etc/apt/sources.list.d/google-chrome*;
	sudo apt remove -y --purge dbus-user-session;
	sleep 1;
	"

	echo "Removing SSH Server (Package \"openssh-server\")"
	sudo xterm -e "
	sudo apt remove -y openssh-server;

	sudo apt install -y -f;
	sleep 1;
	"

	echo "Upgrading..."
	sudo xterm -e "
	sudo apt upgrade -y;
	sleep 1;
	"

	echo "Autoremoving useless dependencies"
	sudo xterm -e "
	sudo apt autoremove -y;
	sleep 1;
	"
fi
