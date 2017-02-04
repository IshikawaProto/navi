if [ $USER = "root" ]; then
    echo "Do not run this as root"
    exit
fi

echo "enabled=false" > ~/.config/user-dirs.conf

gsettings set org.gnome.desktop.wm.preferences button-layout 'close,maximize,minimize:appmenu'
