#!/bin/bash
# Ask the username
echo "Please enter your username"
read username

sudo adduser $username
# Generating keys

echo "/home/$username/.ssh/authorized_keys" | ssh-keygen -t rsa -p ""
# Moving files to format required by system
mv /home/$username/.ssh/authorized_keys /home/$username/.ssh/authorized_keys.ppk
mv /home/$username/.ssh/authorized_keys.pub /home/$username/.ssh/authorized_keys
chown $username:$username -R /home/$username/.ssh 

