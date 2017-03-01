cd ~/Desktop
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

alias code='open -a "Visual Studio Code"'
alias be='bundle exec'
alias bake='be rake'
alias dcms='bake db:drop db:create db:migrate db:seed'
alias mig='bake db:migrate' 

# Git branch in prompt.
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
