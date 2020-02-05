# Set up rbenv to be able to work properly
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

##
# Your previous /Users/jenn/.bash_profile file was backed up as /Users/jenn/.bash_profile.macports-saved_2019-10-30_at_15:50:57
##

# MacPorts Installer addition on 2019-10-30_at_15:50:57: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.
