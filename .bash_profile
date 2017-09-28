## alias
# default
alias cd..='cd ..'
alias ll='ls -Galh'
alias server='http-server -p 8000 1>/dev/null'
alias workspace='cd ~/workspace'

# git
alias gb='git branch'
alias gc='git commit -a'
alias gf='git fetch'
alias gs='git status -s'

# npm
alias npmls='npm ls --depth 0'

## completions
# git
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# npm
if [ -f ~/.npm-completion.bash ]; then
  . ~/.npm-completion.bash
fi

## ssh-keys
ssh-add -AK ~/.ssh/github &>/dev/null

## prompt
# git branch
function branch () {
  git symbolic-ref --short HEAD &>/dev/null && echo '('`git symbolic-ref --short HEAD`')'
}

# current working directory
function dir () {
  p=${PWD/$HOME/\~}
  p=${p/*workspace/+}
  echo $p
}

# prompt
PS1="\e[0;31m\u\e[m at \e[0;33m\h\e[m in \e[0;32m\$(dir)\$(branch)\e[m\n $ "
SUDO_PS1="\e[0;31m\u\e[m at \e[0;33m\h\e[m in \e[0;32m\$(dir)\$(branch)\e[m\n # "
