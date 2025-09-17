#!/bin/bash

echo "alias ll='ls -las'" >> ~/.bash_aliases
echo "alias phpv='sudo update-alternatives --config php'" >> ~/.bash_aliases
echo "alias up='sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y'" >> ~/.bash_aliases
echo "alias cu='composer update'" >> ~/.bash_aliases
echo "alias cr='composer require'" >> ~/.bash_aliases
echo "alias cda='composer dumpautoload'" >> ~/.bash_aliases
echo "alias crd='composer run dev'" >> ~/.bash_aliases
echo "alias pa='php artisan'" >> ~/.bash_aliases
echo "alias pat='php artisan test'" >> ~/.bash_aliases
echo "alias pas='php artisan serve'" >> ~/.bash_aliases
echo "alias pam='php artisan migrate'" >> ~/.bash_aliases
echo "alias pamroll='php artisan migrate:rollback'" >> ~/.bash_aliases
echo "alias pams='php artisan migrate --seed'" >> ~/.bash_aliases
echo "alias pamfs='php artisan migrate:fresh --seed'" >> ~/.bash_aliases
echo "alias pamrfs='php artisan migrate:refresh --seed'" >> ~/.bash_aliases
echo "alias gac='git add . && git commit -m'" >> ~/.bash_aliases
echo "alias gpush='git push origin \$(git branch --show-current)'" >> ~/.bash_aliases
echo "alias gpull='git pull origin \$(git branch --show-current)'" >> ~/.bash_aliases
echo "alias n16='nvm use 16'" >> ~/.bash_aliases
echo "alias n22='nvm use 22'" >> ~/.bash_aliases
echo "alias y='yarn'" >> ~/.bash_aliases
echo "alias ys='yarn serve'" >> ~/.bash_aliases

# isntall zsh
sudo apt install zsh

# Adiona o zsh como shell padrão do usuário
chsh -s $(which zsh)

# Install OhMyZsh
sh -c "$(curl -fsSL https://install.ohmyzsh.sh/)"

# Add into ~/.bashrc
# if [ -f ~/.bash_aliases ]; then
#     . ~/.bash_aliases
# fi

source ~/.bash_aliases
source ~/.bashrc
