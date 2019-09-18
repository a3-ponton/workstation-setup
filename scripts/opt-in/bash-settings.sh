cat ~/.bash_profile | grep 'rbenv init' || echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

cat ~/.bash_profile | grep 'export NVM_DIR' || echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.bash_profile
cat ~/.bash_profile | grep '$NVM_DIR/nvm.sh' || echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ~/.bash_profile
cat ~/.bash_profile | grep '$NVM_DIR/bash_completion' || echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion' >> ~/.bash_profile
  # This loads nvm


cp files/custom.aliases.bash ~/.bash_it/aliases/enabled/custom.aliases.bash
