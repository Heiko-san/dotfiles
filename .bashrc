# source original ~/.bashrc
[ -r ~/.bashrc ] && source ~/.bashrc

# own bash additions
[ -r $BOREUS_ENV/.bashrc_local ] && source $BOREUS_ENV/.bashrc_local
[ -r $BOREUS_ENV/.bash_aliases ] && source $BOREUS_ENV/.bash_aliases

# other tools
if [ -r $BOREUS_ENV/.vimrc ]; then
    alias vim="vim -S $BOREUS_ENV/.vimrc"
    alias vi="vim -S $BOREUS_ENV/.vimrc"
fi
[ -r $BOREUS_ENV/.gitconfig ] && alias git="HOME=$BOREUS_ENV git"

# switch user and keep env additions (root only)
if [[ ${EUID} == 0 ]] ; then
    function become {
        sudo -u $1 -i bash --rcfile $BOREUS_ENV/.bashrc
    }
fi
