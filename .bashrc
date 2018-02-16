# source original ~/.bashrc
[ -r ~/.bashrc ] && source ~/.bashrc

# ensure presence of some basic vars
export HOSTNAME=$(hostname)
export USER=$(whoami)

# own bash additions
[ -r $BOREUS_ENV/.bashrc_local ] && source $BOREUS_ENV/.bashrc_local
[ -r $BOREUS_ENV/.bash_aliases ] && source $BOREUS_ENV/.bash_aliases

# other tools
if [ -r $BOREUS_ENV/.vimrc ]; then
    alias vim="vim -S $BOREUS_ENV/.vimrc"
    alias vi="vim -S $BOREUS_ENV/.vimrc"
fi
[ -r $BOREUS_ENV/.gitconfig ] && alias git="HOME=$BOREUS_ENV git"

# user specific env
[ -r ${BOREUS_ENV}/users/${USER}.sh ] && source ${BOREUS_ENV}/users/${USER}.sh
