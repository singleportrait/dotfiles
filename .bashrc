alias l='ls -la'

# Git aliases
alias gs='git status'
alias gc='git commit'
alias gp='git push'
alias gl='git pull'
alias gco='git checkout'
alias gr='git rebase'
alias gap='git add -p'
alias gnap='git add -N . && git add -p'
alias gd='git diff'
alias gb='git branch'

# Genius aliases
alias rg='cd ~/src/rapgenius/'
alias ss='cd ~/src/rapgenius/ && script/dev server'

# Delete branches that are already merged with master
# to tidy up old work
alias gbtidy='git branch --merged master | grep -v "\* master" | xargs -n 1 git branch -d'
