
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# completions
## git
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

## npm
if [ -f ~/.npm-completion.bash ]; then
  . ~/.npm-completion.bash
fi

# ssh-keys
ssh-add -K ~/.ssh/github &>/dev/null
ssh-add -K ~/.ssh/deploy &>/dev/null

## default execution
export BASH_SILENCE_DEPRECATION_WARNING=1
size
