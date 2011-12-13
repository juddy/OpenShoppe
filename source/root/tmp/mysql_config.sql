# mysql script for setting database users and permissions
CREATE USER 'db_user'@'localhost' IDENTIFIED BY 'linux';
CREATE USER 'pos'@'localhost' IDENTIFIED BY 'P@ssw0rd!';
FLUSH PRIVILEGES;
