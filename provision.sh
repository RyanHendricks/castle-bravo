# Install Git
echo "# Installing GitHub"
apt-get -y install git curl

# Install nvm dependencies
echo "# Installing nvm dependencies"
apt-get -y install build-essential libssl-dev

# Execute nvm installation script
echo "# Executing nvm installation script"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash

# Set up nvm environment without restarting the shell
export NVM_DIR="${HOME}/.nvm"
[ -s "${NVM_DIR}/nvm.sh" ] && . "${NVM_DIR}/nvm.sh"
[ -s "${NVM_DIR}/bash_completion" ] && . "${NVM_DIR}/bash_completion"

# Install node
echo "# Installing nodeJS"
nvm install --lts

# Configure nvm to use version 6.9.5
nvm use --lts
nvm alias default 'lts/*'

# Install the latest version of npm
echo "# Installing npm"
npm install npm@latest -g

# Ensure that CA certificates are installed
apt-get -y install apt-transport-https ca-certificates