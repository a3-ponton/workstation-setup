echo
echo "Installing Ruby tools and Ruby 2.6.4"
cp files/.irbrc ~/.irbrc
brew_install_if_missing readline
eval "$(rbenv init -)"
rbenv install 2.6.4 --skip-existing
rbenv global 2.6.4
gem install bundler --version 2.0.2
rbenv rehash

