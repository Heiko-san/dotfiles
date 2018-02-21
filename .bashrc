# source original ~/.bashrc
[ -r ~/.bashrc ] && source ~/.bashrc

# ensure presence of some basic vars
export HOSTNAME=$(hostname)
export USER=$(whoami)

# alternative home
export ORIGINAL_HOME=$HOME
export HOME=$BOREUS_ENV

# own bash additions
[ -r $BOREUS_ENV/.bashrc_local ] && source $BOREUS_ENV/.bashrc_local
[ -r $BOREUS_ENV/.bash_aliases ] && source $BOREUS_ENV/.bash_aliases

# user specific env
[ -r ${BOREUS_ENV}/users/${USER}.sh ] && source ${BOREUS_ENV}/users/${USER}.sh
