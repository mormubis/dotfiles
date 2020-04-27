#!/usr/bin/env bash

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"
alias cd..="cd .."

# Always enable colored `grep` output
# Note: `GREP_OPTIONS="--color=auto"` is deprecated, hence the alias usage.
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Get week number
alias week='date +%V'

# Get macOS Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm update -g;'

# IP addresse
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Replace git with hub
alias git='hub'

# List all files
alias ll='ls -Galh'

# Start HTTP server
alias server='http-server -p 8000'

# Measure terminal screen
alias size='printf "*%78s*\n"'

# More usefull alias for git
alias gb='git branch'
alias gbr='git branch -r'
alias gbs='git branch --set-upstream-to origin/`git symbolic-ref --short HEAD`'
alias gc='git commit -a'
alias gcm='git commit'
alias gf='git fetch'
alias gp='git pull --rebase'
alias gpr='git pull-request -p -b development'
alias gs='git status -s'

# More useful alias for npm
alias npmls='npm ls --depth 0'
alias npmup='npm-check -u'
alias nrl='npm run lint'
alias nrs='npm start'
alias nrt='npm test'
alias nrtw='npm test:watch'
