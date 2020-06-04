#@IgnoreInspection BashAddShebang
# source original ~/.bashrc

if [ "$1" != "skip" ]; then
    [ -r ~/.bashrc ] && source ~/.bashrc
fi

# ensure presence of some basic vars
export HOSTNAME=$(hostname)
export USER=$(whoami)

# own bash additions
[ -r $BOREUS_ENV/.bashrc_local ] && source $BOREUS_ENV/.bashrc_local
[ -r $BOREUS_ENV/.bash_aliases ] && source $BOREUS_ENV/.bash_aliases

# bash completions
[ -d $BOREUS_ENV/bash_completion.d ] && source $BOREUS_ENV/bash_completion.d/*.sh

# user specific env
[ -r ${BOREUS_ENV}/users/${USER}.sh ] && source ${BOREUS_ENV}/users/${USER}.sh


function become {
    sudo -u $1 -i BOREUS_ENV=$BOREUS_ENV bash --rcfile $BOREUS_ENV/.bashrc
}
