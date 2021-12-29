#!/usr/bin/env bash

echo "Hello $(whoami)! Let's get you set up."

echo "installing homebrew"

# brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "brew installing stuff"
# Install more recent versions of some macOS tools.
brew install grep openssh

# Install font tools
brew tap homebrew/cask-fonts
brew install font-mononoki

# aerial
# bat
# gh
# git
# hub
# nvm
# watchman
brew install aerial bat gh git git-lfs nvm

echo "installing apps"

# 1password
# chrome
# firefox
# iterm2
# java
# skype
# slack
# spotify
# telegram
# webstorm
brew install 1password firefox google-chrome iterm2 java skype slack spotify telegram webstorm

# node dependencies
nvm install node
nvm alias default node
# depcheck
# http-server
# nodemon
# npm-check
# npm-check-updates
npm i -g depcheck http-server nodemon npm-check npm-check-updates

echo "customizing terminal"

# install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl "https://raw.githubusercontent.com/mormubis/dotfiles/master/aliases.zsh" -o ~/.oh-my-zsh/custom/aliases.zsh
sed -i='' 's/^plugins=.*$/plugins=(git nvm zsh-autosuggestions)/g' ~/.zshrc
# powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
curl "https://raw.githubusercontent.com/mormubis/dotfiles/master/.p10k.zsh" -o ~/.p10k.zsh
sed -i='' 's/^ZSH_THEME=.*$/ZSH_THEME="powerlevel10k\/powerlevel10k"/g' ~/.zshrc
# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
curl "https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/MaterialDark.itermcolors" -o ~/Downloads/MaterialDark.itermcolors


echo "configuring git"

# git
curl "https://raw.githubusercontent.com/mormubis/dotfiles/master/.gitconfig" -o ~/.gitconfig
curl "https://raw.githubusercontent.com/mormubis/dotfiles/master/.gitignore" -o ~/.gitignore

echo "Generating an RSA token for GitHub"
mkdir -p ~/.ssh
touch ~/.ssh/config
ssh-keygen -t rsa -b 4096 -C "adrian@delarosab.me"
echo "Host *\n AddKeysToAgent yes\n UseKeychain yes\n IdentityFile ~/.ssh/github" | tee ~/.ssh/config
eval "$(ssh-agent -s)"
echo "run 'pbcopy < ~/.ssh/github.pub' and paste that into GitHub"

# mac os

echo "making system modifications:"
curl https://raw.githubusercontent.com/mormubis/dotfiles/master/macos.sh | bash

# webstorm 

echo "downloading webstorm settings"
curl "https://raw.githubusercontent.com/mormubis/dotfiles/master/settings.zip" -o ~/Downloads/settings.zip

echo "Done. Note that some of these changes require a logout/restart to take effect."
