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
	sudo apt-get install -y curl &>/dev/null

	echo "Adding helpful repositories"

	sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y &>/dev/null
	sudo add-apt-repository ppa:bartbes/love-stable -y &>/dev/null
	sudo add-apt-repository ppa:terrz/razerutils -y &>/dev/null
	sudo add-apt-repository ppa:lah7/polychromatic -y &>/dev/null

	curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash - &>/dev/null

	sudo rm /etc/apt/sources.list.d/google-chrome* &>/dev/null

	echo "Updating..."

	sudo apt-get update -y &>/dev/null

	read -p "Install ubuntu-gnome-desktop? (Over Unity) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo apt-get install -y ubuntu-gnome-desktop &>/dev/null
		echo "Installed Ubuntu-Gnome-Desktop, removing cancerous programs"
	fi

	echo "Removing dead weight that comes with Ubuntu"
	sudo apt-get remove -y --auto-remove account-plugin-aim account-plugin-facebook account-plugin-flickr account-plugin-jabber account-plugin-salut account-plugin-yahoo aisleriot gnome-mahjongg gnome-mines gnome-sudoku landscape-client-ui-install unity-lens-music unity-lens-photos unity-lens-video firefox unity-webapps-common evolution empathy rhythmbox libreoffice* cheese activity-log-manager brasero gnome-calendar checkbox-* gnome-contacts gnome-documents gnome-maps gnome-music onboard gnome-online-accounts gnome-photos remmina shotwell simple-scan gnome-orca thunderbird transmission* evince eog seahorse gnome-screenshot gnome-weather totem xdiagnose webbrowser-app &>/dev/null

	sudo rm google-chrome*.deb &>/dev/null
	read -p "Install google chrome? " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo apt-get install -y libxss1 libappindicator1 libindicator7 &>/dev/null
		wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
		sudo dpkg -i google-chrome*.deb &>/dev/null
		sudo rm google-chrome*.deb &>/dev/null
		echo "Installed Google Chrome"
	fi

	sudo rm tixati*.deb &>/dev/null
	read -p "Install tixati? (A nice torrent client) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		wget https://download2.tixati.com/download/tixati_2.55-1_amd64.deb
		sudo dpkg -i tixati*.deb &>/dev/null
		sudo rm tixati*.deb &>/dev/null
		echo "Installed Tixati"
	fi

	sudo rm atom.deb &>/dev/null
	read -p "Install atom? (A great text editor) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		wget -O atom.deb https://atom.io/download/deb
		sudo dpkg -i atom.deb &>/dev/null
		sudo rm atom.deb &>/dev/null
		echo "Installed Atom"
	fi

	read -p "Install Razer RGB product support? " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo apt-get install -y python3-razer razer-kernel-modules-dkms razer-daemon razer-doc &>/dev/null
		sudo apt-get install -y polychromatic &>/dev/null
		echo "Installed Polychromatic and Razer Support"
	fi

	read -p "Install MacChanger? (Helps keep your MAC Address anonymous) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo apt-get install -y macchanger &>/dev/null
		echo "Installed MacChanger"
	fi

	read -p "Install Steam? (Gaming Platform) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo apt-get install -y steam &>/dev/null
		echo "Installed Steam"
	fi

	read -p "Install Virtualbox + Extension Pack? (Computer Simulation Platform) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo apt-get install -y virtualbox virtualbox-ext-pack &>/dev/null
		echo "Installed Virtualbox + Extension Pack"
	fi

	read -p "Install Love2D? (2D Game Development Platform) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo apt-get install -y love &>/dev/null
		echo "Installed Love2D"
	fi

	read -p "Install LUA 5.2? (Useful programming language) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo apt-get install -y lua5.2 &>/dev/null
		echo "Installed Lua 5.2"
	fi

	read -p "Install MediaInfo Commandline? (Tells you info about a video or photo) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo apt-get install -y mediainfo &>/dev/null
		echo "Installed MediaInfo"
	fi

	read -p "Install NodeJS and NPM? (Great programming framework) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo apt-get install -y nodejs &>/dev/null
		echo "Installed NodeJS and NPM"
	fi

	read -p "Install Git? (Version control) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo apt-get install -y git &>/dev/null
		echo "Installed Git"
	fi

	read -p "Install HTOP? (RAM and CPU usage monitor) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo apt-get install -y htop &>/dev/null
		echo "Installed HTOP"
	fi

	read -p "Install GParted? (Partition editor) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo apt-get install -y gparted &>/dev/null
		echo "Installed GParted"
	fi

	read -p "Install VLC Media Player? (The best media viewer) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo apt-get install -y vlc &>/dev/null
		echo "Installed VLC"
	fi

	read -p "Install Fail2Ban? (Prevents Brute-Force SSH attacks) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo apt-get install -y fail2ban &>/dev/null
		echo "Installed Fail2Ban"
	fi

	read -p "Install SSH? (For remote command line access) " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		sudo apt-get install -y ssh &>/dev/null
		echo "Installed SSH"
	fi

	echo "Installing Preload the UReadAhead (Performance Boosts)"
	sudo apt-get install -y preload ureadahead &>/dev/null

	echo "Removing SSH Server (You can add it back by typing \"sudo apt-get install openssh-server\")"
	sudo apt-get remove -y openssh-server &>/dev/null

	echo "Removing DBus-User-Session (Prevents a keyring bug)"
	sudo apt-get remove -y --purge dbus-user-session &>/dev/null

	echo "Installing packages which were not installed because they did not have the required dependencies (If there are any)"
	sudo apt-get install -y -f &>/dev/null

	echo "Upgrading..."
	sudo apt-get upgrade -y &>/dev/null

	echo "Autoremoving useless dependencies"
	sudo apt-get autoremove -y &>/dev/null

	echo "It would be in your best interests to reboot now"
else
	echo "Beginning checkup"

	echo "Updating..."
	sudo apt-get update -y &>/dev/null

	echo "Patching bugs"
	sudo rm /etc/apt/sources.list.d/google-chrome* &>/dev/null
	sudo apt-get remove -y --purge dbus-user-session &>/dev/null

	echo "Removing SSH Server (Package \"openssh-server\")"
	sudo apt-get remove -y openssh-server &>/dev/null

	sudo apt-get install -y -f &>/dev/null

	echo "Upgrading..."
	sudo apt-get upgrade -y &>/dev/null

	echo "Autoremoving useless dependencies"
	sudo apt-get autoremove -y &>/dev/null
fi
