
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
