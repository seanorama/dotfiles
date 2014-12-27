for file in ~/dotfiles/extras/{*.sh}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

if [ -n "$ZSH_VERSION" ]; then
    for file in ~/dotfiles/extras/{*.zsh}; do
        [ -r "$file" ] && [ -f "$file" ] && source "$file";
    done;
elif [ -n "$BASH_VERSION" ]; then
    for file in ~/dotfiles/extras/{*.bash}; do
        [ -r "$file" ] && [ -f "$file" ] && source "$file";
    done;
else
   false
fi
