#!/bin/bash

echo "alias up='sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y'" >> ~/.bash_aliases
echo "alias cu='composer update'" >> ~/.bash_aliases
echo "alias cda='composer dumpautoload'" >> ~/.bash_aliases
echo "alias pa='php artisan'" >> ~/.bash_aliases
echo "alias pas='php artisan serve'" >> ~/.bash_aliases
echo "alias pam='php artisan migrate'" >> ~/.bash_aliases
echo "alias pams='php artisan migrate --seed'" >> ~/.bash_aliases
echo "alias gac='git add . && git commit -m'" >> ~/.bash_aliases
echo "alias n16='nvm use 16'" >> ~/.bash_aliases
echo "alias n22='nvm use 22'" >> ~/.bash_aliases
echo "alias y='yarn'" >> ~/.bash_aliases
echo "alias ys='yarn serve'" >> ~/.bash_aliases

source ~/.bash_aliases
source ~/.bashrc