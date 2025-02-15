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

# Clone T-Header repository
echo "Cloning T-Header repository..."
git clone https://github.com/CRZX1337/T-Header.git

# Navigate to T-Header directory and run t-header.sh
echo "Running T-Header script..."
cd T-Header && bash t-header.sh

# Add neofetch to zshrc to run on startup
echo "Adding 'neofetch' to ~/.zshrc for startup..."
if [ -f ~/.zshrc ]; then
  echo "neofetch" >> ~/.zshrc
else
  echo "neofetch" > ~/.zshrc
fi

echo "Neofetch will now run automatically on each Termux startup."
echo "MOTD removed and setup complete!"