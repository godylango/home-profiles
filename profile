#-*-shell-script-*-

# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Mac OSX Homebrew rate limiting - get token from github for homebrew
# to avoid blowing rate limiting on brew searches
### export HOMEBREW_GITHUB_API_TOKEN=API_TOKEN

# language stuff from Linux .profile
export LANGUAGE="en_US:en"
export LC_MESSAGES="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"

# from Evan: speed up your Rails
export RUBY_HEAP_MIN_SLOTS=800000
export RUBY_HEAP_FREE_MIN=100000
export RUBY_HEAP_SLOTS_INCREMENT=300000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=79000000

# read the .ackrc at each directory level instead of just ~
export ACKRC=".ackrc"

# emacs stuff
EDITOR="emacsclient -t"
export EDITOR=$EDITOR

# keep long history
MILLION=1000000
export HISTFILESIZE=$MILLION
export HISTSIZE=$MILLION
# update bash history after each command
export PROMPT_COMMAND="history -a"
