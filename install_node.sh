# This script can be used to install NodeJS on Ubuntu
# This should also work just fine on WSL (Windows Linux Subsystem)
# https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-16-04

# Install prerequisite packages
sudo apt-get update
sudo apt-get install build-essential libssl-dev

# Download an nvm install script
curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh -o install_nvm.sh

# Run the nvm install script we just downloaded
bash install_nvm.sh

# Make nvm available without restarting the terminal
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Install Node 12
nvm install 12
nvm use 12
