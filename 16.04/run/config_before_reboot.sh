sudo echo 'configuration blabla...'
sudo echo 'blacklist nouveau
options nouveau modeset=0' >> /etc/modprobe.d/blacklist-nouveau.conf
sudo update-initramfs -u
