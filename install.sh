#!/bin/bash

echo "Hi! I am here to install vnc server!"
sudo apt update -y
echo "Installing Desktop Environment..."
sudo apt install -y xfce4 xfce4-goodies
sudo apt install -y tightvncserver

# Set VNC password
VNC_PASSWORD="Mellob1989@78"
mkdir -p "$HOME/.vnc"
echo $VNC_PASSWORD | vncpasswd -f > "$HOME/.vnc/passwd"
chmod 600 "$HOME/.vnc/passwd"

echo "Starting VNC Server..."
vncserver

# Configuring VNC Server
vncserver -kill :1
cd && cd /home/coder
mv ~/.vnc/xstartup ~/.vnc/xstartup.bak
sudo mv xstartup /home/coder/.vnc
sudo chmod +x ~/.vnc/xstartup

# Start VNC Server with the new setup
vncserver

echo "Enjoy! Task Completed!"
