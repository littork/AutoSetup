sudo add-apt-repository ppa:videolan/stable-daily -y
sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y
sudo add-apt-repository ppa:bartbes/love-stable -y
sudo add-apt-repository ppa:terrz/razerutils -y
sudo add-apt-repository ppa:lah7/polychromatic -y

sudo rm /etc/apt/sources.list.d/google-chrome*
sudo apt-get update -y

read -p "Install ubuntu-gnome-desktop? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    sudo apt-get install -y ubuntu-gnome-desktop
fi

sudo apt-get remove -y --auto-remove account-plugin-aim account-plugin-facebook account-plugin-flickr account-plugin-jabber account-plugin-salut account-plugin-yahoo aisleriot gnome-mahjongg gnome-mines gnome-sudoku landscape-client-ui-install unity-lens-music unity-lens-photos unity-lens-video firefox unity-webapps-common evolution empathy rhythmbox libreoffice* cheese activity-log-manager brasero gnome-calendar checkbox-* gnome-contacts gnome-documents gnome-maps gnome-music onboard gnome-online-accounts gnome-photos remmina shotwell simple-scan gnome-orca thunderbird transmission* evince eog seahorse gnome-screenshot gnome-weather totem xdiagnose webbrowser-app

sudo rm google-chrome*.deb
read -p "Install google chrome? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
	sudo apt-get install -y libxss1 libappindicator1 libindicator7
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	sudo dpkg -i google-chrome*.deb
	sudo rm google-chrome*.deb
fi

sudo rm tixati*.deb
read -p "Install tixati? (A torrent client) " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
	wget https://download2.tixati.com/download/tixati_2.55-1_amd64.deb
	sudo dpkg -i tixati*.deb
	sudo rm tixati*.deb
fi

sudo rm atom.deb
read -p "Install atom? (A great text editor) " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
	wget -O atom.deb https://atom.io/download/deb
	sudo dpkg -i atom.deb
	sudo rm atom.deb
fi

read -p "Install Razer RGB product support? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
	sudo apt-get install -y python3-razer razer-kernel-modules-dkms razer-daemon razer-doc
	sudo apt-get install -y polychromatic
fi

read -p "Install MacChanger? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
	sudo apt-get install -y macchanger
fi

read -p "Install steam? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
	sudo apt-get install -y steam
fi

read -p "Install Virtualbox + Extension Pack? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
	sudo apt-get install -y virtualbox virtualbox-ext-pack
fi

sudo apt-get install -y git

read -p "Install Love2D? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
	sudo apt-get install -y love
fi

sudo apt-get install -y htop

read -p "Install LUA 5.2? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
	sudo apt-get install -y lua5.2
fi

sudo apt-get install -y gparted
sudo apt-get install -y vlc
sudo apt-get install -y fail2ban
sudo apt-get install -y ssh
sudo apt-get install -y preload ureadahead

sudo apt-get remove -y openssh-server
sudo apt-get remove -y --purge dbus-user-session

sudo apt-get install -y -f

sudo apt-get upgrade -y

sudo apt-get autoremove -y

echo "It would be in your best interests to reboot now"
