#@IgnoreInspection BashAddShebang
# fix deeper shell levels (e.g. screen)
[ -n "$ORIGINAL_HOME" ] && export HOME=$ORIGINAL_HOME

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

# bash completions
[ -d $BOREUS_ENV/bash_completion.d ] && source $BOREUS_ENV/bash_completion.d/*.sh

# user specific env
[ -r ${BOREUS_ENV}/users/${USER}.sh ] && source ${BOREUS_ENV}/users/${USER}.sh
