for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;


for file in ~/.dotfiles/extras/{*.sh}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;


if [ -n "$ZSH_VERSION" ]; then
    for file in ~/.dotfiles/extras/{*.zsh}; do
        [ -r "$file" ] && [ -f "$file" ] && source "$file";
    done;
    unset file;
elif [ -n "$BASH_VERSION" ]; then
    for file in ~/.dotfiles/extras/{*.bash}; do
        [ -r "$file" ] && [ -f "$file" ] && source "$file";
    done;
    unset file;
else
   false
fi
