#!/bin/bash
apt-get update # apache installation, enabling and status check
apt install apache2
mkdir -p /var/www/gci/
cd /var/www/gci/
echo '<!DOCTYPE html>' > index.html
echo '<html>' >> index.html
echo '<head>' >> index.html
echo '<title>Test</title>' >> index.html
echo '<meta charset="UTF-8">' >> index.html
echo '</head>' >> index.html
echo '<body>' >> index.html
echo '<h1>Andrii Metenkanych</h1>' >> index.html
echo '</body>' >> index.html
echo '</html>' >> index.html
echo '<VirtualHost *:80>' >> /etc/apache2/sites-available/conf_file.conf
echo 'ServerAdmin webmaster@localhost' >> /etc/apache2/sites-available/conf_file.conf
echo '	DocumentRoot /var/www/gci' >> /etc/apache2/sites-available/conf_file.conf
echo '	ServerName localhost' >> /etc/apache2/sites-available/conf_file.conf
echo '	ErrorLog ${APACHE_LOG_DIR}/error.log' >> /etc/apache2/sites-available/conf_file.conf
echo '	CustomLog ${APACHE_LOG_DIR}/access.log combined' >> /etc/apache2/sites-available/conf_file.conf
echo '</VirtualHost>' >> /etc/apache2/sites-available/conf_file.conf

a2ensite conf_file.conf
service apache2 reload

