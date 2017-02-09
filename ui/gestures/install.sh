# Mouse Gestures

apt install libinput-tools xdotool
usermod -a -G input ${SUDO_USER}

git clone https://github.com/bulletmark/libinput-gestures
cd libinput-gestures
make install
cd ..
rm -rf ./libinput-gestures

cp libinput-gestures.conf ~/.config
chown "${SUDO_USER}:${SUDO_USER}" ~/.config/libinput-gestures.conf

sudo -H -u ${SUDO_USER} bash -c 'libinput-gestures-setup start'
sudo -H -u ${SUDO_USER} bash -c 'libinput-gestures-setup autostart'
