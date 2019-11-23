# alias
## default
alias cd..='cd ..'
alias deploy='ssh ubuntu@ec2-52-53-200-167.us-west-1.compute.amazonaws.com'
alias git='hub'
alias ll='ls -Galh'
alias server='http-server -p 8000 1>/dev/null'
alias simulator='open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app/'
alias size='printf *%78s*\\n'
alias workspace='cd ~/workspace'
alias bye='clear; exit;'

## git
alias gb='git branch'
alias gbr='git branch -r'
alias gbs='git branch --set-upstream-to origin/`git symbolic-ref --short HEAD`'
alias gc='git commit -a -m ""'
alias gcm='git commit -m ""'
alias gf='git fetch'
alias gp='git pull --rebase'
alias gpr='git pull-request -p -b development'
alias gbp='git remote prune origin; git branch --merged development | grep -v development | xargs git branch -d'
alias gs='git status -s'

## npm
alias npmls='npm ls --depth 0'
alias npmup='npm-check -u'
alias nrl='npm run lint'
alias nrs='npm start'
alias nrt='npm test'
alias nrtw='npm test:watch'


# completions
## git
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

## npm
if [ -f ~/.npm-completion.bash ]; then
  . ~/.npm-completion.bash
fi

# prompt
## git branch
function branch () {
  git symbolic-ref --short HEAD &>/dev/null && echo '('`git symbolic-ref --short HEAD`')'
}

## current working directory
function dir () {
  p=${PWD/$HOME/\~}
  p=${p/*workspace/+}
  echo $p
}
# prompt
PS1="\e[0;31m\u\e[m at \e[0;33m\h\e[m in \e[0;32m\$(dir)\$(branch)\e[m\n $ "
SUDO_PS1="\e[0;31m\u\e[m at \e[0;33m\h\e[m in \e[0;32m\$(dir)\$(branch)\e[m\n # "


# ssh-keys
ssh-add -K ~/.ssh/github &>/dev/null
ssh-add -K ~/.ssh/deploy &>/dev/null

## default execution
export BASH_SILENCE_DEPRECATION_WARNING=1
size
