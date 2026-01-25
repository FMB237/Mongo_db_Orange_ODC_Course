
MySQL Setup & Administration Guide

Table of Contents
- Installation
- Basic Commands
- User Management
- Database Operations
- Troubleshooting
- Quick Reference

Installation
1. Install MySQL Server

# Update package list
sudo apt update

# Install MySQL Server
sudo apt install mysql-server -y

# Check installation
mysql --version

2. Start and Enable MySQL Service

sudo systemctl start mysql
sudo systemctl enable mysql
sudo systemctl status mysql

3. Secure MySQL Installation

sudo mysql_secure_installation

Basic Commands
Service Management

sudo systemctl start mysql
sudo systemctl stop mysql
sudo systemctl restart mysql
sudo systemctl status mysql
sudo systemctl enable mysql
sudo systemctl disable mysql

Connecting to MySQL

sudo mysql -u root -p
mysql -u username -p
mysql -u username -p database_name
mysql -u root -p -e "SHOW DATABASES;"

Exit MySQL Shell

EXIT;
QUIT;

User Management

CREATE USER 'username'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'username'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON database_name.* TO 'username'@'localhost';
FLUSH PRIVILEGES;
ALTER USER 'username'@'localhost' IDENTIFIED BY 'new_password';
DROP USER 'username'@'localhost';

Database Operations

CREATE DATABASE database_name;
USE database_name;
SHOW DATABASES;
DROP DATABASE database_name;

Backup

mysqldump -u username -p database_name > backup.sql
mysqldump -u username -p --all-databases > all_backup.sql

Restore

mysql -u username -p database_name < backup.sql

Troubleshooting

sudo systemctl status mysql
sudo tail -f /var/log/mysql/error.log

Configuration Files

/etc/mysql/my.cnf
/var/lib/mysql
/var/log/mysql/error.log

Security Best Practices
- Use strong passwords
- Do not use root for applications
- Backup regularly
- Keep MySQL updated
