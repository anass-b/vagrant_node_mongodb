# Install oh-my-zsh dependencies
apt-get --yes install zsh
apt-get --yes install git

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
