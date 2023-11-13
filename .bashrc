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
alias gdc='git diff --cached'
alias gb='git branch'

# Genius aliases
alias rg='cd ~/src/rapgenius/'
alias ss='cd ~/src/rapgenius/ && script/dev server'
alias sf='cd ~/src/rapgenius/ && script/dev server --forward'
alias sc='cd ~/src/rapgenius/ && script/dev console'

# Delete branches that are already merged with main/master
# from http://stevenharman.net/git-clean-delete-already-merged-branches
alias gbtidy='git branch --merged main | grep -v "\* main " | xargs -n 1 git branch -d'
alias gbtidymaster='git branch --merged master | grep -v "\* master " | xargs -n 1 git branch -d'

# Git completion
# from https://github.com/bobthecow/git-flow-completion/wiki/Install-Bash-git-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# From oh-my-zsh; not perfect but pretty okay
# https://github.com/robbyrussell/oh-my-zsh/blob/master/lib/git.zsh

# Get the name of the branch we are on
function git_prompt_info() {
  if [[ “$(command git config —get oh-my-zsh.hide-status 2>/dev/null)” != “1” ]]; then
    ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
      ref=$(command git rev-parse —short HEAD 2> /dev/null) || return 0
    echo “${ref#refs/heads/}$(parse_git_dirty)”
  fi
}

# Checks if working tree is dirty
parse_git_dirty() {
  local STATUS=''
  local FLAGS
  FLAGS=('--porcelain')
  if [[ "$(command git config --get oh-my-zsh.hide-dirty)" != "1" ]]; then
    if [[ $POST_1_7_2_GIT -gt 0 ]]; then
      FLAGS+='--ignore-submodules=dirty'
    fi
    if [[ "$DISABLE_UNTRACKED_FILES_DIRTY" == "true" ]]; then
      FLAGS+='--untracked-files=no'
    fi
    STATUS=$(command git status ${FLAGS} 2> /dev/null | tail -n1)
  fi
  if [[ -n $STATUS ]]; then
    echo "$ZSH_THEME_GIT_PROMPT_DIRTY"
  else
    echo "$ZSH_THEME_GIT_PROMPT_CLEAN"
  fi
}

# Customize bash prompt:
# computer username with color, pwd with color, current git branch if applicable
  # "\h" after "\u@" will show you the name of the computer
  # "01;34" will change the colors of the prompts
[ -z "$PS1" ] || export PS1="\[\033[01;34m\]\u@\[\033[00m\]:\[\033[00;33m\]    \w\[\033[00m\]  \$(git_prompt_info '(%s)')\n$ "

# Set CLICOLOR to get Ansi Colors in iTerm2 (folder colors, etc.)
export CLICOLOR=1

# Show more lines of history
export HISTSIZE=2000

# Aidin: Point to correct QT5 path for capybara-webkit 1.14.0 for Aidin 2 repository
# export PATH="$(brew --prefix qt@5.5)/bin:$PATH"

# Aidin: Made a copy of `soffice` in this file to `libreoffice`, and now need to export the path
# export PATH=$PATH:/Applications/LibreOffice.app/Contents/MacOS/

# Genius: Not sure if I need this, but adding rbenv initialization just in case
# eval "$(rbenv init -)"
