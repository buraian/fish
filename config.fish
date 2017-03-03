# Path Variables for Development --------------------------

# Drush
if test -e ~/.composer/vendor/drush/drush/drush
  set -x PATH "$HOME/.composer/vendor/drush/drush" $PATH
end

# ImageMagick
if test -d /usr/local/Cellar/imagemagick/6.9.5-7
  set MAGICK_HOME "/usr/local/Cellar/imagemagick/6.9.5-7"
  set PATH $MAGICK_HOME/bin $PATH
  set DYLD_LIBRARY_PATH "$MAGICK_HOME/lib/"
end

# MongoDB
if test -e /usr/local/mongodb/bin/mongod
  set -x PATH /usr/local/mongodb/bin $PATH
end

# NPM
# https://github.com/sindresorhus/guides/blob/master/npm-global-without-sudo.md
set NPM_PACKAGES $HOME/.npm-packages
set NODE_PATH $NPM_PACKAGES/lib/node_modules $NODE_PATH
set PATH $NPM_PACKAGES/bin $PATH

set -e MANPATH
set MANPATH $NPM_PACKAGES/shar/man:(manpath)

# pyenv
if test -e ~/.pyenv/bin/pyenv
  set -x PATH "$HOME/.pyenv/bin" $PATH
  . (pyenv init - | psub)
end

# rbenv
if test -e ~/.rbenv/bin/rbenv
  set -x PATH "$HOME/.rbenv/bin" $PATH
  . (rbenv init - | psub)
end

# Aliases -------------------------------------------------

# Applications
alias stree "/Applications/SourceTree.app/Contents/Resources/stree"
alias sublime "/usr/local/bin/sublime"

# Show/Hide hidden files in OS X Finder
alias show_files "defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app"
alias hide_files "defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app"

# Bandwidth Speed Test
alias speed_test "wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip"
