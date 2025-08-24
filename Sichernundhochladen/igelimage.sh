#!/bin/bash


#Aktuelles Bild holen
python3 /home/pi/tools/esp32getimage.py

# ins VZ schauen
ls -ahl /home/pi/bilder/

#copy zur website
sudo cp /home/pi/bilder/output.jpg /var/www/html/igel.jpg

# ins VZ schauen
ls -ahl /var/www/html/*.jpg

# sftp upload zur website

HOST="www29.your-server.de"
USERNAME="username"
PASSWORD="password"
PORT=22

sshpass -p "$PASSWORD" sftp -oPort=$PORT $USERNAME@$HOST <<EOF

put /var/www/html/igel.jpg igel.jpg

exit

EOF

