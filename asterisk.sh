hostnamectl set-hostname dialer03
sed -i '1i 192.168.90.80 dialer03.intermax.pe dialer03' /etc/hosts
apt update && sudo apt -y upgrade
sudo apt -y install git curl wget libnewt-dev libssl-dev libncurses5-dev subversion  libsqlite3-dev build-essential libjansson-dev libxml2-dev  uuid-dev
add-apt-repository universe -y
apt update && sudo apt -y install subversion
apt policy asterisk
apt policy asterisk
cd /usr/src/
wget http://downloads.asterisk.org/pub/telephony/asterisk/asterisk-16-current.tar.gz
sudo tar xvf asterisk-16-current.tar.gz
cd asterisk-16*/
sudo contrib/scripts/get_mp3_source.sh
contrib/scripts/install_prereq install
./configure
make menuselect
sudo make
make install
make progdocs
make samples
make config
sudo ldconfig
groupadd asterisk
sudo useradd -r -d /var/lib/asterisk -g asterisk asterisk
sudo usermod -aG audio,dialout asterisk
sudo chown -R asterisk.asterisk /etc/asterisk
sudo chown -R asterisk.asterisk /var/{lib,log,spool}/asterisk
sudo chown -R asterisk.asterisk /usr/lib/asterisk
echo "runuser = asterisk" >> /etc/asterisk/asterisk.conf
echo "rungroup = asterisk" >> /etc/asterisk/asterisk.conf
systemctl restart asterisk
systemctl enable asterisk
apt install git
git clone https://github.com/Edgar-Asterisk/archivos.git
cd archivos/
reboot
