#!/bin/bash

# PHP Installation
sudo apt update && sudo apt upgrade -y

# Download and install nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.5/install.sh | bash

# in lieu of restarting the shell
\. "$HOME/.nvm/nvm.sh"

# Download and install Node.js:
nvm install 24
nvm install 16

# Verify the Node.js version:
node -v # Should print "v24.17.0".
nvm current # Should print "v16.20.2".

# Verify npm version:
npm -v # Should print "11.13.0".

# Atualiza o bash
source ~/.bashrc

# Install Yarn
npm install --global yarn
