#!/bin/sh

# (C) 2015-2016 Cryptopunks.org <Xa2ee at cryptopunks dot org>
#
# MinSecWifi uninstall script

INSTALLDIR="/usr/bin"

# check root
if [ "$USER" != 'root' ]; then
    echo "Sorry, you need to run this as root"
    exit
fi

# check minsecwifi
if [ -f $INSTALLDIR/minsecwifi ]; then
    echo "Removing $INSTALLDIR/minsecwifi: "
    rm -v $INSTALLDIR/minsecwifi
else
    echo "$INSTALLDIR/minsecwifi not installed"
fi

# check config
if [ -f /etc/minsecwifi.conf ]; then
    echo
    echo "Remove /etc/minsecwifi.conf? (y/n)"
    read yesno
    if [ $yesno = "y" ]; then
        rm /etc/minsecwifi.conf
    fi
fi

