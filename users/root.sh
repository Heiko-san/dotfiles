# switch user and keep env additions
function become {
    sudo -u $1 -i bash --rcfile $BOREUS_ENV/.bashrc
}
