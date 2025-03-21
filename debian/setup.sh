#!/bin/bash

sudo apt update -y

# Necessário para a instalação do Google Chrome
sudo apt install fonts-liberation libu2f-udev -y

sudo apt-get install git-all

sudo apt install software-properties-common ca-certificates lsb-release apt-transport-https -y

sudo apt install python3
sudo apt install python3-pip -y

sudo apt install python3-opencv

sudo sh -c 'echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'

wget -qO - https://packages.sury.org/php/apt.gpg | sudo apt-key add -

sudo apt update -y

sudo apt install php7.4 -y
sudo apt install php7.4-cli php7.4-mbstring php7.4-xml php7.4-common php7.4-curl php7.4-zip php7.4-gd php7.4-intl php7.4-imagick php7.4-dom php7.4-xml php7.4-mysql php7.4-sqlite3 -y
sudo apt install php8.0 -y
sudo apt install php8.0-cli php8.0-mbstring php8.0-xml php8.0-common php8.0-curl php8.0-zip php8.0-gd php8.0-intl php8.0-imagick php8.0-dom php8.0-xml php8.0-mysql php8.0-sqlite3 -y
sudo apt install php8.3 -y
sudo apt install php8.3-cli php8.3-mbstring php8.3-xml php8.3-common php8.3-curl php8.3-zip php8.3-gd php8.3-intl php8.3-imagick php8.3-dom php8.3-xml php8.3-mysql php8.3-sqlite3 -y

touch ~/.bash_aliases
echo "alias ll='ls -l'" > ~/.bash_aliases
echo "alias la='ls -A'" >> ~/.bash_aliases
echo "alias l='ls -CF'" >> ~/.bash_aliases
echo "alias phpv='sudo update-alternatives --config php'" >> ~/.bash_aliases

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'dac665fdc30fdd8ec78b38b9800061b4150413ff2e3b6f88543c636f7cd84f6db9189d43a81e5503cda447da73c7e5b6') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"

sudo mv composer.phar /usr/local/bin/composer

composer global config bin-dir --absolute

echo 'export PATH="$PATH:/home/$USER/.config/composer/vendor/bin"' >> ~/.bashrc

source ~/.bash_aliases

sudo apt install curl

# Download and install nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.2/install.sh | bash

# in lieu of restarting the shell
\. "$HOME/.nvm/nvm.sh"

# Download and install Node.js:
nvm install 22
nvm install 20
nvm install 16

# Verify the Node.js version:
node -v # Should print "v22.14.0".
nvm current # Should print "v22.14.0".

# Verify npm version:
npm -v # Should print "10.9.2".
source ~/.bashrc

npm install --global yarn
yarn --version

sudo apt install curl wget apt-transport-https dirmngr gdebi -y

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo gdebi google-chrome-stable*

sudo apt update -y
sudo apt install snapd
sudo snap install core

sudo snap install beekeeper-studio

sudo snap install insomnia

sudo snap install heidisql-wine --beta

sudo snap install postman

sudo snap install android-studio --classic

# INstall Flutter
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get install -y curl git unzip xz-utils zip libglu1-mesa
wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.22.2-stable.tar.xz
sudo apt-get install lib32stdc++6
sudo tar -xf flutter_linux_3.22.2-stable.tar.xz -C /usr/bin/
echo 'export PATH="/usr/bin/flutter/bin:$PATH"' >> ~/.bash_profile
source ~/.bash_profile

sudo apt install cmake ninja-build pkg-config clang libgtk-3-dev -y
flutter doctor

# Install MySql
sudo apt update
sudo apt install mariadb-server
# sudo mysql_secure_installation
# Tutorial de instalação https://www.digitalocean.com/community/tutorials/how-to-install-mariadb-on-debian-11

# Install Docker 
sudo snap install docker
sudo addgroup --system docker
sudo adduser $USER docker
newgrp docker
sudo snap disable docker
sudo snap enable docker
sudo chmod 666 /var/run/docker.sock

# Install wkhtmltopdf
wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.0g-2ubuntu4_amd64.deb
sudo dpkg -i libssl1.1_1.1.0g-2ubuntu4_amd64.deb

wget https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-2/wkhtmltox_0.12.6.1-2.bullseye_amd64.deb
sudo dpkg -i wkhtmlto*

npm install -g bower
