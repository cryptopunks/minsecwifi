#!/bin/sh

# (C) 2015-2016 Cryptopunks.org <Xa2ee at cryptopunks dot org>
#
# MinSecWifi installer

INSTALLDIR="/usr/bin"

# check root
if [ "$USER" != 'root' ]; then
    echo "Sorry, you need to run this as root"
    exit
fi

# Copying minsecwifi in $INSTALLDIR
echo -n "Copying "
cp -v minsecwifi $INSTALLDIR
# Replacing path to minsecwifi.conf
sed -i s/'.\/minsecwifi.conf'/'\/etc\/minsecwifi.conf'/ $INSTALLDIR/minsecwifi
# Generate new config
if [ ! -f /etc/minsecwifi.conf ]; then
    $INSTALLDIR/minsecwifi -xm > /etc/minsecwifi.conf
fi

echo
echo "Please edit /etc/minsecwifi.conf (run: \`sudo $INSTALLDIR/minsecwifi -em\`)"
