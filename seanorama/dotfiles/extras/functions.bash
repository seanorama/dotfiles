    _update_hosts() {
      wget -N -P ~/Projects/dotfiles/seanorama/dotfiles/etc/ http://someonewhocares.org/hosts/zero/hosts
      sudo cp -f ~/Projects/dotfiles/seanorama/dotfiles/etc/hosts /etc/hosts
      dscacheutil -flushcache
    }
