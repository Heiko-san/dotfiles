# source original ~/.bashrc
[ -r ~/.bashrc ] && source ~/.bashrc

# own additions
[ -r $BOREUS_ENV/.bash_aliases ] && source $BOREUS_ENV/.bash_aliases
if [ -r $BOREUS_ENV/.vimrc ]; then
    alias vim="vim -S $BOREUS_ENV/.vimrc"
    alias vi="vim -S $BOREUS_ENV/.vimrc"
fi
if [ -r $BOREUS_ENV/.gitconfig ]; then
    alias git="HOME=$BOREUS_ENV git"
fi
