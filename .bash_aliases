#@IgnoreInspection BashAddShebang
# aiming assistance
alias ll="ls -Alh --color=auto"
alias öö="ll"
alias kk="ll"
alias cd..="cd .."

# go to own "home"
alias cdd="cd $BOREUS_ENV"

# fast grep
alias grep='grep --binary-files=without-match --color=auto'

# crontab -l + /etc/cron.d
alias cronls='crontab -l; echo; awk "(\$6==\"$(id -un)\"){print FILENAME \": \" \$0}" $(find /etc/cron.d -readable -type f)'

# other tools
if [ -r $BOREUS_ENV/.vimrc ]; then
    alias vim="vim -S $BOREUS_ENV/.vimrc"
    alias vi="vim -S $BOREUS_ENV/.vimrc"
fi
# use personal .gitconfig 
[ -r $BOREUS_ENV/.gitconfig ] && alias git="HOME=$BOREUS_ENV git"
