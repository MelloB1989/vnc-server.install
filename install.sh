#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
echo "Hi! I am here to install vnc server!"
sudo apt update -y
echo "Installing Desktop Environment..."
#sudo apt-get remove -y gdm3
sudo apt install -y --no-install-recommends xfce4 xfce4-goodies
sudo apt-get install -y --no-install-recommends x11vnc
sudo cp ./x11vnc.service /lib/systemd/system/x11vnc.service
#sudo cp ./lightdm.conf /etc/lightdm/lightdm.conf.d/lightdm.conf
sudo useradd -m avidia
echo "avidia:avidia" | sudo chpasswd
sudo usermod -aG sudo avidia
sudo mkdir ~/.vnc
x11vnc -storepasswd AvidiaVNC ~/.vnc/passwd

sudo systemctl daemon-reload
sudo systemctl enable x11vnc.service
sudo systemctl start x11vnc.service
#sudo systemctl restart lightdm

echo "Enjoy! Task Completed!"
