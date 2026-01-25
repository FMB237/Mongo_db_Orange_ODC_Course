#!/bin/bash

# ==============================
# MySQL Auto Installation Script
# Ubuntu / Debian / Linux Mint
# ==============================

DB_USER="bruce"
DB_PASS="Th@9Sand"
DB_NAME="bruce_db"

echo "🔄 Updating system..."
sudo apt update -y

echo "📦 Installing MySQL Server..."
sudo apt install mysql-server -y

echo "🚀 Starting MySQL service..."
sudo systemctl start mysql
sudo systemctl enable mysql

echo "🔐 Securing MySQL (auto-config)..."

sudo mysql <<EOF
-- Set root auth to password (if needed)
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Root@123';

-- Remove anonymous users
DELETE FROM mysql.user WHERE User='';

-- Disallow remote root login
UPDATE mysql.user SET Host='localhost' WHERE User='root';

-- Remove test DB
DROP DATABASE IF EXISTS test;
DELETE FROM mysql.db WHERE Db='test' OR Db='test\\_%';

FLUSH PRIVILEGES;
EOF

echo "👤 Creating database and user..."

sudo mysql -u root -pRoot@123 <<EOF
CREATE DATABASE IF NOT EXISTS $DB_NAME;
CREATE USER IF NOT EXISTS '$DB_USER'@'localhost' IDENTIFIED BY '$DB_PASS';
GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'localhost';
FLUSH PRIVILEGES;
EOF

echo "📁 Creating backup folder..."
mkdir -p ~/mysql_backups

echo "📊 MySQL Version:"
mysql --version

echo "📌 MySQL Status:"
sudo systemctl status mysql --no-pager

echo "✅ SETUP COMPLETE!"
echo "----------------------------------"
echo "Database : $DB_NAME"
echo "User     : $DB_USER"
echo "Password : $DB_PASS"
echo "Root Pass: Root@123"

echo "----------------------------------"



#🔐 After install, you connect like this:
#mysql -u bruce -p bruce_db
#Password: Th@9Sand
