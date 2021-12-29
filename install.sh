#!/usr/bin/env bash

echo "Hello $(whoami)! Let's get you set up."

echo "installing homebrew"

# brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "brew installing stuff"
# Install more recent versions of some macOS tools.
brew install grep openssh

# Install font tools
brew tap homebrew/cask-fonts
brew cask install font-mononoki

# aerial
# bat
# gh
# git
# hub
# nvm
# watchman
brew install aerial bat gh git git-lfs nvm watchman

echo "installing apps"

# 1password
# chrome
# firefox
# java
# skype
# slack
# spotify
# telegram
# webstorm
brew install 1password firefox google-chrome java skype slack spotify telegram webstorm

# node dependencies
# depcheck
# http-server
# nodemon
# npm-check
# npm-check-updates
npm i -g depcheck http-server nodemon npm-check npm-check-updates

echo "cloning dotfiles"

# Retrieve config files
curl "https://raw.githubusercontent.com/mormubis/dotfiles/master/.aliases" -o ~/.aliases
curl "https://raw.githubusercontent.com/mormubis/dotfiles/master/.bash_profile" -o ~/.bash_profile
curl "https://raw.githubusercontent.com/mormubis/dotfiles/master/.gitconfig" -o ~/.gitconfig
curl "https://raw.githubusercontent.com/mormubis/dotfiles/master/.gitignore" -o ~/.gitignore
curl "https://raw.githubusercontent.com/mormubis/dotfiles/master/.prompt" -o ~/.prompt

echo "making system modifications:"
curl https://raw.githubusercontent.com/mormubis/dotfiles/master/macos | bash

echo "Generating an RSA token for GitHub"
mkdir -p ~/.ssh
touch ~/.ssh/config
ssh-keygen -t rsa -b 4096 -C "adrian@delarosab.me"
echo "Host *\n AddKeysToAgent yes\n UseKeychain yes\n IdentityFile ~/.ssh/github" | tee ~/.ssh/config
eval "$(ssh-agent -s)"
echo "run 'pbcopy < ~/.ssh/github.pub' and paste that into GitHub"

echo "Done. Note that some of these changes require a logout/restart to take effect."
