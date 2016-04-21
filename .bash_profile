# default
alias cd..='cd ..'
alias ll='ls -Galh'
alias simulator=$'osascript -e \'activate application \"iOS Simulator\"\''
alias server='http-server -p 8000 1>/dev/null'

# git
alias gb='git branch'
alias gc='git commit -a'
alias gf='git fetch'
alias gs='git status -s'

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# github
ssh-add ~/.ssh/github &>/dev/null

# prompt
function branch () {
  git symbolic-ref --short HEAD 2>/dev/null
}
function dir () {
  p=${PWD/$HOME/\~}
  p=${p/*workspace/+}
  echo $p
}
PS1="\e[0;31m\u\e[m at \e[0;33m\h\e[m in \e[0;32m\$(dir)(\$(branch))\e[m\n > "
