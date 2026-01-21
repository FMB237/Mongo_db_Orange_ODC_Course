#!/bin/bash
echo "Author Fouenang Miguel Bruce"
# MongoDB 4.4 installation script for Debian/Ubuntu

set -e

echo "Updating packages..."
sudo apt update -y
sudo apt upgrade -y

echo "Installing required packages..."
sudo apt install -y gnupg curl

echo "Adding MongoDB GPG key..."
curl -fsSL https://pgp.mongodb.com/server-4.4.asc | sudo gpg -o /usr/share/keyrings/mongodb-archive-keyring.gpg --dearmor

echo "Creating MongoDB source list..."
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-archive-keyring.gpg ] https://repo.mongodb.org/apt/ubuntu $(lsb_release -cs)/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list

echo "Updating package database..."
sudo apt update

echo "Installing MongoDB 4.4..."
sudo apt install -y mongodb-org

echo "Starting and enabling MongoDB service..."
sudo systemctl start mongod
sudo systemctl enable mongod

echo "Checking MongoDB status..."
sudo systemctl status mongod --no-pager

echo "MongoDB 4.4 installation is complete!"
echo "You can now use 'mongo' to connect to the database."
