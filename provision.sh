# Install oh-my-zsh dependencies
apt-get --yes install zsh
apt-get --yes install git
#sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install node.js manually
#cd /opt
#sudo wget https://nodejs.org/dist/v4.1.1/node-v4.1.1-linux-x64.tar.gz
#sudo tar xzf node-v4.1.1-linux-x64.tar.gz
#rm node-v4.1.1-linux-x64.tar.gz
#cd /usr/local/bin
#sudo ln -s /opt/node-v4.1.1-linux-x64/bin/node .
#sudo ln -s /opt/node-v4.1.1-linux-x64/lib/node_modules/npm/bin/npm-cli.js npm

# Install node-js using official repo
curl --silent --location https://deb.nodesource.com/setup_4.x | sudo bash -
apt-get --yes install nodejs

# Install mongodb
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list
apt-get update
apt-get install mongodb-org

# Fix locale issue
rm /etc/default/locale
echo "LANG=en_US.UTF-8" > /etc/default/locale
echo "LANGUAGE=en_US" >> /etc/default/locale
echo "LC_ALL=en_US.UTF-8" >> /etc/default/locale

apt-get --yes install build-essential
