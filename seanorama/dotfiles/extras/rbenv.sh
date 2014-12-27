
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="/Users/sroberts/.rbenv/shims:${PATH}"
rbenv() {
  typeset command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval `rbenv "sh-$command" "$@"`;;
  *)
    command rbenv "$command" "$@";;
  esac
}

alias locate='mdfind -name' # uses Spotlight index, searches user directories unlike OSX-shipped locate/updatedb

# brew cask install google-cloud-sdk
source '/opt/homebrew-cask/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/opt/homebrew-cask/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
