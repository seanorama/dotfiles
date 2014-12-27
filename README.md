dotfiles
========

### Requirements

  * [homebrew](http://brew.sh/)
  * [git](http://git-scm.com/): Can be installed from homebrew: ```brew install git```

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
cd ~/Projects/dotfiles/seanorama/dotfiles
git submodule update --init --recursive
./install
```

### Borrow from other dotfiles repositories

```
cd ~/Projects/dotfiles/
git submodule add https://github.com/mathiasbynens/dotfiles mathiasbynens/dotfiles
git submodule add https://github.com/anishathalye/dotfiles anishathalye/dotfiles
git submodule update --init --recursive
```
