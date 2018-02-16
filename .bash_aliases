# aiming assistance
alias ll="ls -Alh --color=auto"
alias öö="ll"
alias kk="ll"
alias cd..="cd .."

# fast grep
alias grep='grep --binary-files=without-match --color=auto'

# stasi
alias last='last -win 40'
alias last2="grep '\-login:' /var/log/messages | grep -v 'ansible' | tail -n 40"

# force refresh of cached stuff
alias clearmycache="rm -f $BOREUS_ENV/.cache*"

# Boreus stuff
alias crc='/root/bin/mkMd5Sums && service netmodo restart'
