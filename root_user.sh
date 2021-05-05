echo "Welcome to Luxxy's root_user script"
echo "Now we going to set a password for the root user"
passwd root

echo "Setting the ssh config"
sudo sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

echo "restarting the ssh"
sudo service ssh restart

echo "all done thanks for using this script"

echo "you can now exit the ssh and login as root user with the password you put"