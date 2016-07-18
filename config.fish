# Path Variables for Development --------------------------

# Drush
set -x PATH /Users/brian/.composer/vendor/drush/drush $PATH

# MongoDB
set -x PATH /usr/local/mongodb/bin $PATH

# NPM
# https://github.com/sindresorhus/guides/blob/master/npm-global-without-sudo.md
set NPM_PACKAGES $HOME/.npm-packages
set NODE_PATH $NPM_PACKAGES/lib/node_modules $NODE_PATH
set PATH $NPM_PACKAGES/bin $PATH

set -e MANPATH
set MANPATH $NPM_PACKAGES/shar/man:(manpath)

# pyenv
set -x PATH "$HOME/.pyenv/bin" $PATH
. (pyenv init - | psub)

# rbenv
set -x PATH "$HOME/.rbenv/bin" $PATH
. (rbenv init - | psub)

# Aliases -------------------------------------------------
# Show/Hide hidden files in OS X Finder
alias show_files "defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app"
alias hide_files "defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app"
