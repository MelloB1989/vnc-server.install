echo "Hi! I am here to install vnc server!"
sudo apt update -y
echo "Installing Desktop Environment..."
sudo apt install -y xfce4 xfce4-goodies
sudo apt install -y tightvncserver
echo "Please input a password"
echo "Remember this password to connect through vnc"
vncserver
vncserver -kill :1
cd && cd /home/ubuntu
mv ~/.vnc/xstartup ~/.vnc/xstartup.bak
sudo mv xstartup //home/ubuntu/.vnc
sudo chmod +x ~/.vnc/xstartup
vncserver
echo "Enjoy! Task Completed!"
