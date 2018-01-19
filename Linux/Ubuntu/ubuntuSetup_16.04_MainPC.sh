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
	sudo xterm -geometry 75x25+100+100 -T "Installing dependencies" -e "
	sudo apt-get install -y curl;

	sleep 3;
	"
	sleep 0.25


	echo "Adding helpful repositories"

	sudo xterm -geometry 75x25+100+100 -T "Adding helpful repositories" -e "
	sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y;
	sudo add-apt-repository ppa:bartbes/love-stable -y;
	sudo add-apt-repository ppa:openrazer/stable -y;
	sudo add-apt-repository ppa:polychromatic/stable -y;
	sudo add-apt-repository ppa:shutter/ppa -y;

	curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -;

	sudo rm /etc/apt/sources.list.d/google-chrome*;

	sleep 3;
	"
	sleep 0.25

	echo "Updating..."

	sudo xterm -geometry 75x25+100+100 -T "Updating" -e "
	sudo apt-get update -y;
	sleep 3;
	"
	sleep 0.25

	read -p "Install ubuntu-gnome-desktop? (Over Unity) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Installing Ubuntu-Gnome-Desktop" -e "
		sudo apt-get install -y ubuntu-gnome-desktop;
		sleep 1;
		"
		sleep 0.25
		echo "Installed Ubuntu-Gnome-Desktop"
	fi

	echo "Removing dead weight that comes with Ubuntu"
	sudo xterm -geometry 75x25+100+100 -T "Removing garbage programs" -e "
	sudo apt-get remove -y --auto-remove account-plugin-aim account-plugin-facebook account-plugin-flickr account-plugin-jabber account-plugin-salut account-plugin-yahoo aisleriot gnome-mahjongg gnome-mines gnome-sudoku landscape-client-ui-install unity-lens-music unity-lens-photos unity-lens-video firefox unity-webapps-common evolution empathy rhythmbox libreoffice* cheese activity-log-manager brasero gnome-calendar checkbox-* gnome-contacts gnome-documents gnome-maps gnome-music onboard gnome-online-accounts gnome-photos remmina shotwell simple-scan gnome-orca thunderbird transmission* evince eog seahorse gnome-screenshot gnome-weather totem xdiagnose webbrowser-app;
	sleep 1;
	"
	sleep 0.25

	sudo rm google-chrome*.deb &>/dev/null
	read -p "Install google chrome? " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Installing Google Chrome" -e "
		sudo apt-get install -y libxss1 libappindicator1 libindicator7;
		wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb;
		sudo dpkg -i google-chrome*.deb;
		sudo rm google-chrome*.deb;
		sleep 1;
		" &
		sleep 0.25
		echo "Installed Google Chrome"
	fi

	sudo rm tixati*.deb &>/dev/null
	read -p "Install Tixati? (A nice torrent client) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Installing Tixati" -e "
		wget https://download2.tixati.com/download/tixati_2.55-1_amd64.deb;
		sudo dpkg -i tixati*.deb;
		sudo rm tixati*.deb;
		sleep 1;
		" &
		sleep 0.25
		echo "Installed Tixati"
	fi

	sudo rm discord.deb &>/dev/null
	read -p "Install Discord? (A nice communication client) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Installing Discord" -e "
		sudo apt-get install -y libc++1;
		wget -O discord.deb \"https://discordapp.com/api/download?platform=linux&format=deb\";
		sudo dpkg -i discord.deb;
		sleep 1;
		sudo rm discord.deb;
		sleep 5;
		" &
		sleep 0.25
		echo "Installed Discord"
	fi

	sudo rm atom.deb &>/dev/null
	read -p "Install Atom? (A great text editor) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Installing Atom" -e "
		wget -O atom.deb https://atom.io/download/deb;
		sudo dpkg -i atom.deb;
		sudo rm atom.deb;
		sleep 1;
		" &
		sleep 0.25
		echo "Installed Atom"
	fi

	read -p "Install Razer RGB product support? " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Razer RGB Support" -e "
		sudo apt-get install -y openrazer-meta openrazer-daemon python3-openrazer
		sudo apt-get install -y polychromatic;
		sleep 5;
		" &
		sleep 0.25
		echo "Installed Polychromatic and Razer Support"
	fi

	read -p "Install MacChanger? (Helps keep your MAC Address anonymous) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Installing MacChanger" -e "
		sudo apt-get install -y macchanger;
		sleep 5;
		" &
		sleep 0.25
		echo "Installed MacChanger"
	fi

	read -p "Install Steam? (Gaming Platform) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Installing Steam" -e "
		sudo apt-get install -y steam;
		sleep 1;
		" &
		sleep 0.25
		echo "Installed Steam"
	fi

	read -p "Install Virtualbox + Extension Pack? (Computer Simulation Platform) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Installing Virtualbox" -e "
		sudo apt-get install -y virtualbox virtualbox-ext-pack;
		sleep 1;
		" &
		sleep 0.25
		echo "Installed Virtualbox + Extension Pack"
	fi

	read -p "Install Love2D? (2D Game Development Platform) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Installing Love2D" -e "
		sudo apt-get install -y love;
		sleep 1;
		" &
		sleep 0.25
		echo "Installed Love2D"
	fi

	read -p "Install LUA 5.2? (Useful programming language) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Installing LUA" -e "
		sudo apt-get install -y lua5.2;
		sleep 1;
		" &
		sleep 0.25
		echo "Installed Lua 5.2"
	fi

	read -p "Install MediaInfo Commandline? (Tells you info about a video or photo) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Installing MediaInfo" -e "
		sudo apt-get install -y mediainfo;
		sleep 1;
		" &
		sleep 0.25
		echo "Installed MediaInfo"
	fi

	read -p "Install NodeJS and NPM? (Great programming framework) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Installing NodeJS" -e "
		sudo apt-get install -y nodejs;
		sleep 1;
		" &
		sleep 0.25
		echo "Installed NodeJS and NPM"
	fi

	read -p "Install Git? (Version control) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Installing Git" -e "
		sudo apt-get install -y git;
		sleep 1;
		" &
		sleep 0.25
		echo "Installed Git"
	fi

	read -p "Install HTOP? (RAM and CPU usage monitor) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Installing HTOP" -e "
		sudo apt-get install -y htop;
		sleep 1;
		" &
		sleep 0.25
		echo "Installed HTOP"
	fi

	read -p "Install GParted? (Partition editor) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Installing GParted" -e "
		sudo apt-get install -y gparted;
		sleep 1;
		" &
		sleep 0.25
		echo "Installed GParted"
	fi

	read -p "Install VLC Media Player? (The best media viewer) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Installing VLC" -e "
		sudo apt-get install -y vlc;
		sleep 1;
		" &
		sleep 0.25
		echo "Installed VLC"
	fi

	read -p "Install Fail2Ban? (Prevents Brute-Force SSH attacks) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Installing Fail2Ban" -e "
		sudo apt-get install -y fail2ban;
		sleep 1;
		" &
		sleep 0.25
		echo "Installed Fail2Ban"
	fi

	read -p "Install SSH? (For remote command line access) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Installing SSH" -e "
		sudo apt-get install -y ssh;
		sleep 1;
		" &
		sleep 0.25
		echo "Installed SSH"
	fi

	read -p "Install GPicView? (For photo viewing) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Installing GPicView" -e "
		sudo apt-get install -y gpicview;
		sleep 1;
		" &
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
		" &
		sleep 0.25
		echo "Installed Youtube-DL"
	fi

	read -p "Install Shutter? (For screenshots) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Installing Shutter" -e "
		sudo apt-get install -y shutter;
		sleep 1;
		" &
		sleep 0.25
		echo "Installed Shutter"
	fi

	read -p "Install Redshift? (f.lux for linux) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo xterm -geometry 75x25+100+100 -T "Installing Redshift" -e "
		sudo apt-get install -y redshift;
		sleep 1;
		" &
		sleep 0.25
		echo "Installed Redshift"
	fi

	echo "Installing Preload and UReadAhead (Performance Boosts)"
	sudo xterm -geometry 75x25+100+100 -T "Installing Preload" -e "
	sudo apt-get install -y preload ureadahead;
	sleep 1;
	"
	sleep 0.25

	echo "Removing SSH Server (You can add it back by typing \"sudo apt-get install openssh-server\")"
	sudo xterm -geometry 75x25+100+100 -T "Removing SSH Server" -e "
	sudo apt-get remove -y openssh-server
	sleep 1;
	"
	sleep 0.25

	echo "Removing DBus-User-Session (Prevents a keyring bug)"
	sudo xterm -geometry 75x25+100+100 -T "Preventing Keyring Bug" -e "
	sudo apt-get remove -y --purge dbus-user-session
	sleep 1;
	"
	sleep 0.25

	echo "Installing packages which were not installed because they did not have the required dependencies (If there are any)"
	sudo xterm -geometry 75x25+100+100 -T "Installing failed installations" -e "
	sudo apt-get install -y -f
	sleep 5;
	"
	sleep 0.25

	echo "Upgrading..."
	sudo xterm -geometry 75x25+100+100 -T "Upgrading" -e "
	sudo apt-get upgrade -y
	sleep 1;
	"
	sleep 0.25

	echo "Autoremoving useless dependencies"
	sudo xterm -geometry 75x25+100+100 -T "Autoremoving" -e "
	sudo apt-get autoremove -y
	sleep 1;
	"
	sleep 0.25

	echo "It would be in your best interests to reboot now"
	echo "Go through the tweak tool, and set your desktop background"
	echo ""
	echo "If you have an NVIDIA card, run \"sudo ubuntu-drivers devices\" then run \"sudo apt-get install <Name of NVIDIA-___ Driver>\""
	echo ""
	echo "By default, Ubuntu uses a generic driver called Nouveau that is not optimal"
else
	echo "Beginning checkup"

	echo "Updating..."
	sudo xterm -e "
	sudo apt-get update -y;
	sleep 1;
	"

	echo "Patching bugs"
	sudo xterm -e "
	sudo rm /etc/apt/sources.list.d/google-chrome*;
	sudo apt-get remove -y --purge dbus-user-session;
	sleep 1;
	"

	echo "Removing SSH Server (Package \"openssh-server\")"
	sudo xterm -e "
	sudo apt-get remove -y openssh-server;

	sudo apt-get install -y -f;
	sleep 1;
	"

	echo "Upgrading..."
	sudo xterm -e "
	sudo apt-get upgrade -y;
	sleep 1;
	"

	echo "Autoremoving useless dependencies"
	sudo xterm -e "
	sudo apt-get autoremove -y;
	sleep 1;
	"
fi
