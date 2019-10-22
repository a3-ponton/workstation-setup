source scripts/helpers/brew.sh

echo
echo "Installing version of NodeJS"

# brew install nvm (The NVM website suggests there are some problems with the homebrew version; don't use it)
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

brew_install_if_missing yarn

nvm install v10
nvm alias default v10
npm install yarn detox-cli -g
