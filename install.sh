#!/bin/bash

echo "Hi! I am here to install vnc server!"
sudo apt update -y
echo "Installing Desktop Environment..."
sudo apt install -y xfce4 xfce4-goodies
sudo apt-get install -y lightdm x11vnc


echo "Enjoy! Task Completed!"
