#!/bin/bash

# PHP Installation
sudo apt update && sudo apt upgrade -y

sudo apt install software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt update

sudo apt-get --purge remove php7.4-common
sudo apt-get install php7.4 php7.4-fpm php7.4-cli -y
sudo apt-get install php7.4-common php7.4-mysql php7.4-pgsql php7.4-mbstring php7.4-xml php7.4-gd php7.4-curl php7.4-intl php7.4-zip php7.4-sqlite3 php7.4-dom php7.4-imagick php7.4-bcmath -y

sudo apt-get --purge remove php8.4-common
sudo apt-get install php8.4 php8.4-fpm php8.4-cli -y
sudo apt-get install php8.4-common php8.4-mysql php8.4-pgsql php8.4-mbstring php8.4-xml php8.4-gd php8.4-curl php8.4-intl php8.4-zip php8.4-sqlite3 php8.4-dom php8.4-imagick php8.4-bcmath -y

echo "alias phpv='sudo update-alternatives --config php'" >> ~/.bash_aliases
echo "alias php74='sudo update-alternatives --set php /usr/bin/php7.4'" >> ~/.bash_aliases
echo "alias php84='sudo update-alternatives --set php /usr/bin/php8.4'" >> ~/.bash_aliases

# Composer Installation

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'dac665fdc30fdd8ec78b38b9800061b4150413ff2e3b6f88543c636f7cd84f6db9189d43a81e5503cda447da73c7e5b6') { echo 'Installer verified'.PHP_EOL; } else { echo 'Installer corrupt'.PHP_EOL; unlink('composer-setup.php'); exit(1); }"
php composer-setup.php
php -r "unlink('composer-setup.php');"

sudo mv composer.phar /usr/local/bin/composer

composer global config bin-dir --absolute

echo 'export PATH="$PATH:/home/$USER/.config/composer/vendor/bin"' >> ~/.bashrc

# Atualiza o bash
source ~/.bashrc
