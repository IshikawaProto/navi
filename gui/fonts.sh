if [ $USER = "root" ]; then
    echo "Do not run this as root"
    exit
fi

# MS TTF Fonts
wget http://ftp.de.debian.org/debian/pool/contrib/m/msttcorefonts/ttf-mscorefonts-installer_3.6_all.deb
echo "sudo required to install ms core fonts"
sudo apt install -y ./ttf-mscorefonts-installer_3.6_all.deb
rm -f ./ttf-mscorefonts-installer_3.6_all.deb

# Powerline Fonts
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd ..
rm -rf ./fonts
