#/bin/bash
# config files
curl "https://raw.githubusercontent.com/adelarosab/dotfiles/master/.bash_profile" -o ~/.bash_profile
curl "https://raw.githubusercontent.com/adelarosab/dotfiles/master/.gitconfig" -o ~/.gitconfig
curl "https://raw.githubusercontent.com/adelarosab/dotfiles/master/.gitignore" -o ~/.gitignore

# brew
! which brew && /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# git
! which git && brew install git git-lfs

# hub
! which hub && brew install hub

# node
! which node && brew install node

# docker
! which docker && brew cask install docker

# chrome
! which google-chrome && brew cask install google-chrome

# java
! which java && brew cask install java

# telegram
! which telegram && brew cask install telegram

# webstorm
! which webstorm && brew cask install webstorm

# node dependencies
npm i -g depcheck eslint gitmoji-cli http-server nodemon npm-check npm-check-updates prettier

# completion files
curl "https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash" -o ~/.git-completion.bash
npm completion > ~/.npm-completion.bash
