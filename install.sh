#/bin/bash
# config files
curl "https://raw.githubusercontent.com/adelarosab/dotfiles/master/.bash_profile" -o ~/.bash_profile
curl "https://raw.githubusercontent.com/adelarosab/dotfiles/master/.eslint.json" -o ~/.eslint.json
curl "https://raw.githubusercontent.com/adelarosab/dotfiles/master/.gitconfig" -o ~/.gitconfig
curl "https://raw.githubusercontent.com/adelarosab/dotfiles/master/.gitignore" -o ~/.gitignore

# brew
! which brew && /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# git
! brew install git git-lfs

# hub
! which hub && brew install hub

# node
! which node && brew install node

# java
! which java && brew cask install java

# slack
! which slack && brew cask install slack

# telegram
! which telegram && brew cask install telegram

# webstorm
! which webstorm && brew cask install webstorm

# node dependencies
npm i -g eslint eslint-config-defaults http-server prettier npm-check-updates

# completion files
curl "https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash" -o ~/.git-completion.bash
npm completion > ~/.npm-completion.bash
