#!/bin/bash
# Ask the username
echo "Please enter your username"
read $username

sudo adduser $username
# Generating keys

su $username && cd

echo "/home/$username/.ssh/authorized_keys" | ssh-keygen -t rsa -p ""
# Moving files to format required by system
mv ~/.ssh/authorized_keys ~/.ssh/authorized_keys.ppk
mv ~/.ssh/authorized_keys.pub ~/.ssh/authorized_keys

