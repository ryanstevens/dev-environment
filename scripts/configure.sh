echo "Updating system..."
sudo apt-get update
sudo apt-get upgrade -qq
echo "Finished Updating base"

echo 'Installing stuff'
sudo apt install dos2unix
sudo apt-get install python-software-properties
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs -qq

sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo apt-add-repository 'deb https://apt.dockerproject.org/repo ubuntu-xenial main'
sudo apt-get update -qq
apt-cache policy docker-engine -qq
sudo apt-get install -y docker-engine
sudo usermod -aG docker ubuntu

echo 'Finished running configure.sh' 