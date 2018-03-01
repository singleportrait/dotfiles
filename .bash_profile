# Set up rbenv to be able to work properly
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
