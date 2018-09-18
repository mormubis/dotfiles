#/bin/bash
# config files
curl "https://raw.githubusercontent.com/adelarosab/dotfiles/master/.bash_profile" -o ~/.bash_profile
curl "https://raw.githubusercontent.com/adelarosab/dotfiles/master/.gitconfig" -o ~/.gitconfig
curl "https://raw.githubusercontent.com/adelarosab/dotfiles/master/.gitignore" -o ~/.gitignore

# brew
! which brew && /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# docker
! which docker && brew install docker docker-compose docker-machine

# git
! which git && brew install git git-lfs

# hub
! which hub && brew install hub

# node
! which node && brew install node

# chrome
! which java && brew cask install google-chrome homebrew/cask-versions/google-chrome-canary

# java
! which java && brew cask install java

# ngrock
! which java && brew cask install ngrok

# slack
! which slack && brew cask install slack

# telegram
! which telegram && brew cask install telegram

# webstorm
! which webstorm && brew cask install webstorm

# node dependencies
npm i -g depcheck http-server prettier npm-check-updates

# completion files
curl "https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash" -o ~/.git-completion.bash
npm completion > ~/.npm-completion.bash
