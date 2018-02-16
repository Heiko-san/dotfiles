# switch user and keep env additions
function become {
    sudo -u $1 -i bash --rcfile $BOREUS_ENV/.bashrc
}

# stasi
alias last='last -win 40'
alias last2="grep '\-login:' /var/log/messages | grep -v 'ansible' | tail -n 40"

# force refresh of cached stuff
alias clearmycache="rm -f $BOREUS_ENV/.cache*"

# Boreus stuff
alias crc='/root/bin/mkMd5Sums && service netmodo restart'
