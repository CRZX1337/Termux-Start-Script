#!/bin/bash

# Remove default MOTD (Message Of The Day)
echo "Removing default MOTD..."
mv /data/data/com.termux/files/usr/etc/motd /data/data/com.termux/files/usr/etc/motdbackup

# Update and upgrade packages
echo "Updating and upgrading packages..."
apt update -y && apt upgrade -y

# Install essential packages
echo "Installing essential packages..."
apt install git curl wget zip unzip python python-pip -y

# Re-run update and upgrade (sometimes needed for full upgrade)
echo "Running apt update and upgrade again..."
apt update -y && apt upgrade -y

# Install git again (redundant, but present in your original script)
echo "Installing git (again)..."
apt install git -y

# Install neofetch
echo "Installing neofetch..."
apt install neofetch -y

# Navigate to T-Header directory and run t-header.sh
echo "Running T-Header script..."
 cd script && bash t-header.sh

# Change background color in colors.properties to black
echo "Changing background color in colors.properties to black..."
sed -i 's/background=#282a36/background=#000000/' ~/.termux/colors.properties

# Add neofetch to zshrc to run on startup
echo "Adding 'neofetch' to ~/.zshrc for startup..."
if [ -f ~/.zshrc ]; then
  echo "neofetch" >> ~/.zshrc
else
  echo "neofetch" > ~/.zshrc
fi

echo "Neofetch will now run automatically on each Termux startup."
echo "MOTD removed and setup complete!"

# Navigate back to the parent directory and remove Termux-Start-Script
echo "Removing Termux-Start-Script directory..."
cd  # Gehe zurück ins übergeordnete Verzeichnis
rm -rf Termux-Start-Script  # Entferne das Verzeichnis

# Restart Termux
echo "Restart Termux"
sleep 3
exit
