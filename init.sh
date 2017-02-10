# Clean Up

## Purge junk
apt purge -y libreoffice*
apt purge -y firefox*

## Disable cups
systemctl disable cups.service
systemctl stop cups.service

## Disable LLMNR
echo "LLMNR=no" >> /etc/systemd/resolved.conf
systemctl restart systemd-resolved.service


# Install Basics

## Update apt
apt update

## Install Basics
apt -y install \
    autoconf \
    automake \
    build-essential \
    curl \
    git \
    libtool \
    libffi-dev \
    libssl-dev \
    libyaml-dev \
    unzip

## Fin
apt -y autoremove
