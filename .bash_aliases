#@IgnoreInspection BashAddShebang
# aiming assistance
alias ll="ls -Alh --color=auto"
alias öö="ll"
alias kk="ll"
alias cd..="cd .."

# go to original user home
alias cdd="cd $ORIGINAL_HOME"

# fast grep
alias grep='grep --binary-files=without-match --color=auto'

# crontab -l + /etc/cron.d
alias cronls='crontab -l; echo; awk "(\$6==\"$(id -un)\"){print FILENAME \": \" \$0}" $(find /etc/cron.d -readable -type f)'