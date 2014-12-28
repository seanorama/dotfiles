#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# TODO: explain this
brew tap homebrew/versions
brew tap homebrew/science
brew tap homebrew/python
brew tap homebrew/completions

# install caskroom
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

# Upgrade any already-installed formulae.
brew upgrade

# Install Bash
brew install bash bash-completion
sudo bash -c "echo /usr/local/bin/bash >> /etc/shells"
chsh -s /usr/local/bin/bash

# For X11
brew cask install xquartz
brew tap homebrew/x11

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names


# Install zsh
#brew install zsh zsh-completions zsh-lovers zsh-syntax-highlighting
#sudo bash -c "echo /usr/local/bin/zsh >> /etc/shells"
#chsh -s /usr/local/bin/zsh

brew install gcc swig
brew cask install github
brew install wget --with-iri
brew install curl
brew install python python3
brew install macvim --env-std --custom-icons --override-system-vim --with-lua --with-luajit --with-python --with-ruby --with-perl --with-cscope --with-lua --with-tcl --with-python3
brew install homebrew/dupes/grep
brew install homebrew/dupes/screen


# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz

# Install other useful binaries.
brew install ack
brew install git

brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install speedtest_cli
brew install tree



# Install Node.js. Note: this installs `npm` too, using the recommended
# installation method.
brew install node


###

# Paid apps
# remember to manually add your licenses
brew cask install  crashplan
brew cask install  alfred
brew cask install  lastpass
brew cask install  little-snitch
brew cask install  fantastical

# basics
brew cask install  google-chrome
brew cask install  firefox-beta
brew cask install  iterm2
brew cask install  dropbox
brew cask install  virtualbox
brew cask install  flux
brew cask install  flash-player
brew cask install  spotify
brew cask install  skype
brew cask install  silverlight # needed for streaming (Prime, Netflix, ...) in Firefox & Safari
brew cask install  the-unarchiver

# should be in os x by default
brew cask install  cheatsheet
brew cask install  caffeine
brew cask install  spectacle
brew install  trash

# productivity
brew cask install  evernote
brew cask install  thebrain
#brew cask install  toggl

# sysadmin
brew install ngrep

# security
brew cask install  sidestep # sends all traffic through ssh-tunnel or VPN when on unsecure wifi networks
brew cask install  controlplane

# media
brew install imagemagick --with-webp
brew cask install gimp
brew cask install inkscape
brew install ffmpeg
brew cask install  vlc
brew cask install  mplayerx
brew install  cmus # command-line music/mp3 player
brew cask install mediainfo

# dev
brew cask install  vagrant
brew install homebrew/completions/vagrant-completion
brew install docker docker-completion
brew cask install  java6
brew cask install  java7
brew cask install  github
brew cask install  sourcetree
brew install boost
brew install jq # make json nice
brew cask install quicklook-json

# dev ruby
brew install rbenv
brew install ruby-build libyaml openssl brew-gem
ruby_version="$(curl -sSL http://ruby.thoughtbot.com/latest)"
rbenv install -s "$ruby_version"
rbenv global "$ruby_version"
rbenv local "$ruby_version"
gem update --system
gem install bundler --no-document
rbenv rehash
number_of_cores=$(sysctl -n hw.ncpu)
bundle config --global jobs $((number_of_cores - 1))

# dev python
brew install python python3
brew tap Homebrew/python
brew install numpy scipy matplotlib --with-python3

# hortonworks
brew cask install  box-sync

# system
brew cask install osxfuse
brew install encfs
brew cask install  grandperspective

# extras
brew install tnef # open those stupid winmail.dat files
brew cask install  cord # remote desktop
brew cask install  transmission # bittorrent


###
# Vagrant
vagrant plugin install vagrant-cachier

###
# Fonts
pip install powerline-status
brew tap caskroom/fonts
brew cask install font-roboto font-terminus font-inconsolata-for-powerline \
    font-inconsolata-g-for-powerline font-inconsolata-dz-for-powerline \
    monotype-skyfonts


########################################
# The end

# Make Alfred see our casks
brew cask alfred link

# Links applications to ~/Applications/
brew linkapps --local

# Remove outdated versions from the cellar.
brew cleanup
