dotfiles
========

### Requirements

  * [homebrew](http://brew.sh/)
  * [git](http://git-scm.com/): Can be installed from homebrew: ```brew install git```
  * add to ~/.extra: export HOMEBREW_GITHUB_API_TOKEN=YourKeyHere

### Home I made this

```
git clone https://github.com/seanorama/dotfiles ~/Projects/dotfiles
mkdir ~/Projects/dotfiles/seanorama/dotfiles
cd ~/Projects/dotfiles/seanorama/dotfiles
git submodule add https://github.com/anishathalye/dotbot
```

### Installation

```
git clone https://github.com/seanorama/dotfiles ~/Projects/dotfiles
cd ~/Projects/dotfiles
git submodule update --init --recursive
cd ~/Projects/dotfiles/seanorama/dotfiles
git submodule update --init --recursive
./install
```

### Upgrade submodules

```
git submodule update --init --remote
```

### Included as submodules:

```
cd ~/Projects/dotfiles/
git submodule add https://github.com/mathiasbynens/dotfiles mathiasbynens/dotfiles
git submodule add https://github.com/anishathalye/dotfiles anishathalye/dotfiles
```

### Manual stuff

1. Alfred
  * install license
  * add ~/Applications to Search Scope 
  * add workflows:
    *
1. iTerm
  * add & choose the color profiles from: ~/.dotfiles/resources/solarized/iterm2-colors-solarized/
1. Remap caps lock using seil & karabiner:
    * http://www.economyofeffort.com/2014/08/11/beyond-ctrl-remap-make-that-caps-lock-key-useful/
1. SSH configuration (if not already present)
    * ssh-keygen -t rsa -C “seanorama@gmail.com” ; subl ~/.ssh/id_rsa.pub
1. Other:
  * Install Webex
  * Install Webex Player
*
* 
