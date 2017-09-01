sudo add-apt-repository ppa:videolan/stable-daily -y
sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y
sudo add-apt-repository ppa:bartbes/love-stable -y
sudo add-apt-repository ppa:terrz/razerutils -y
sudo add-apt-repository ppa:lah7/polychromatic -y

sudo rm /etc/apt/sources.list.d/google-chrome*
sudo apt-get update -y

sudo apt-get install -y ubuntu-gnome-desktop

sudo apt-get remove -y --auto-remove account-plugin-aim account-plugin-facebook account-plugin-flickr account-plugin-jabber account-plugin-salut account-plugin-yahoo aisleriot gnome-mahjongg gnome-mines gnome-sudoku landscape-client-ui-install unity-lens-music unity-lens-photos unity-lens-video firefox unity-webapps-common evolution empathy rhythmbox libreoffice* cheese activity-log-manager brasero gnome-calendar checkbox-* gnome-contacts gnome-documents gnome-maps gnome-music onboard gnome-online-accounts gnome-photos remmina shotwell simple-scan gnome-orca thunderbird transmission* evince eog seahorse gnome-screenshot gnome-weather totem xdiagnose webbrowser-app

sudo rm google-chrome*.deb
sudo apt-get install -y libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb
sudo rm google-chrome*.deb

sudo rm tixati*.deb
wget https://download2.tixati.com/download/tixati_2.55-1_amd64.deb
sudo dpkg -i tixati*.deb
sudo rm tixati*.deb

sudo rm atom.deb
wget -O atom.deb https://atom.io/download/deb
sudo dpkg -i atom.deb
sudo rm atom.deb

sudo apt-get install -y python3-razer razer-kernel-modules-dkms razer-daemon razer-doc
sudo apt-get install -y polychromatic
sudo apt-get install -y macchanger
sudo apt-get install -y steam
sudo apt-get install -y libgles1-mesa libglapi-mesa vlc
sudo apt-get install -y sublime-text-installer
sudo apt-get install -y virtualbox virtualbox-ext-pack
sudo apt-get install -y git
sudo apt-get install -y love
sudo apt-get install -y htop
sudo apt-get install -y lua5.2
sudo apt-get install -y gparted
sudo apt-get install -y fail2ban
sudo apt-get install -y ssh
sudo apt-get remove -y openssh-server

sudo apt-get install -y -f

sudo apt-get upgrade -y

sudo apt-get autoremove -y
