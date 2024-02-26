sudo apt-get update
sudo apt-get upgradev -y
sudo apt-get upgrade -y
sudo apt-get install build-essential dkms linux-headers-$(uname -r)
cd /media/manolita
cd VBox_GAs_7.0.12
sudo sh ./VBoxLinuxAdditions.run
sudo reboot
sudo apt install mariadb-server -y
sudo mysql_secure_installation -y
sudo mariadb -u root -p
sudo mkdir /mnt/compartida
sudo mount -t vboxsf compartida /mnt/compartida
ls /mnt/compartida
sudo nano /etc/fstab
mariadb -u manolita -p chinook.sql < /mnt/compartida/chinook.sql
mariadb -u manolita -p chinook < /mnt/compartida/chinook.sql
sudo mariadb -u manolita -p chinook < /mnt/compartida/chinook.sql
sudo mariadb -u root -p
sudo mariadb -u root -p < /mnt/compartida/chinook.sql
cd /mnt/compartida
cat chinook.sql 
nano /mnt/compartida/chinook.sql
nano /mnt/compartida/circo.sql
nano /mnt/compartida/chinook.sql
cd
mariadb -u root -p chinook < /mnt/compartida/chinook.sql
sudo mariadb -u root -p chinook < /mnt/compartida/chinook.sql
sudo mariadb -u root -p circo < /mnt/compartida/circo.sql
cd 
cd /mnt/compartida/
ls -la
cat circo.sql
sudo mariadb -u root -p
sudo mariadb -u root -p circo < /mnt/compartida/circo.sql
cd
python3 --version
python --version
cd /var/log/
cd
echo "vamos a crear el archivo logging.py"
echo "vamos a crear el archivo logging.py, la ruta hacia este puede ser cualquiera, me equivoqué antes, lo vamos a dejar en la ruta que está"
echo "con pwd se ve en qué directorio estamos"
pwd
echo "creamos el logging.py"
sudo nano logging.py
echo "vamos a ver qué permisos tiene con ls -la"
ls -la
echo "le damos los permisos como te dije antes, con sudo chmod 755 logging.py"
con sudo chmod 755 logging.py
sudo chmod 755 logging.py
ls -la
echo "nos vamos a la ruta del sistema para crear servicios"
cd /etc/systemd/system
echo "creamos el servicio logging.service con nano"
sudo nano logging.service
echo "comprobamos de nuevo los permisos con ls -la
"
ls -la
echo "le damos los permisos de nuevo como antes"
sudo chmod 755 logging.service
ls -la logging.service
echo "reiniciamos los servicios"
sudo systemctl daemon-reload
echo "habilitamos servicio"
sudo systemctl enable logging.service
echo "iniciamos el servicio"
sudo systemctl start logging.service
echo "comprobamos el estado"
sudo systemctl status logging.service
echo "luego te diré cómo lo arreglo
"
sudo systemctl status logging.service
python3 /home/manolita/logging.py
xs
cd
sudo chmod +x /home/manolita/logging.py 
ls -la logging.py
mv /home/manolita/logging.py /home/manolita/logging_service.py
sudo nano /etc/systemd/system/logging.service
sudo systemctl daemon-reaload
sudo systemctl daemon-reload
sudo systemctl enable logging.service
sudo systemctl start logging.service
sudo systemctl restart logging.service
sudo systemctl status logging.service
sudo apt-get install git -y
git --version
shutdown
shutdown now
