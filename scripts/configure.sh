echo "Updating system..."
sudo apt-get update
sudo apt-get upgrade -qq
echo "Finished Updating base"

echo 'Installing stuff'
sudo apt install dos2unix
sudo apt-get install python-software-properties
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
apt-get install nodejs -qq

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn

sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo apt-add-repository 'deb https://apt.dockerproject.org/repo ubuntu-xenial main'
sudo apt-get update -qq
apt-cache policy docker-engine -qq
sudo apt-get install -y docker-engine
sudo usermod -aG docker ubuntu

sudo apt install gcc -qq

mkdir /home/ubuntu/.aws
cp /home/ubuntu/projects/dev-environment/user-configs/.gitconfig /home/ubuntu/.gitconfig
cp /home/ubuntu/projects/dev-environment/user-configs/id_rsa /home/ubuntu/.ssh/id_rsa
cp /home/ubuntu/projects/dev-environment/user-configs/id_rsa.pub /home/ubuntu/.ssh/id_rsa.pub
cp /home/ubuntu/projects/dev-environment/user-configs/aws-credentials /home/ubuntu/.aws/credentials
sudo chmod 600 /home/ubuntu/.ssh/id_rsa
sudo chmod 600 /home/ubuntu/.ssh/id_rsa.pub
sudo chown ubuntu /home/ubuntu/.ssh/id_rsa
sudo chown ubuntu /home/ubuntu/.ssh/id_rsa.pub

echo 'set bell-style none' >> /home/ubuntu/.inputrc

echo 'Finished running configure.sh' 