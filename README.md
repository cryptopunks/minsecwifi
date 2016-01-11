## MinSecWifi

### Description

Minimalistic and secure Wifi-manager based by **wpa_supplicant**, **openvpn** and **macchanger**.

## Installation and setup 

```
$ sudo apt-get install openvpn wpasupplicant macchanger 
$ git clone https://github.com/cryptopunks/minsecwifi
$ cd minsecwifi && mv minsecwifi.conf.sample minsecwifi.conf

```
and edit "minsecwifi.conf".

Creating **/etc/wpa_supplicant/wpa_supplicant.conf** in the following format:

```
network={
    ssid="access point 1"
    psk="password"
}
network={
    ssid="access point 2"
    psk="password"
}
```
Assign access rights:

```
$ sudo chown root:root /etc/wpa_supplicant/wpa_supplicant.conf && sudo chmod 600 /etc/wpa_supplicant/wpa_supplicant.conf
```

and run **minsecwifi** with needed argument:

```
$ ./minsecwifi 
Usage:
./minsecwifi [OPTION] 
          -s, --scan                    scan networks
          -r, --run                     run all services
          -k, --killall                 kill all services
          -ew, --edit-wpasupplicant     edit wpa_supplicant.conf
          -em, --edit-minsecwifi        edit minsecwifi.conf
          -ub, --unblock                unblock wifi adaptor
          -id, --interface-up           wifi interface down
          -iu, --interface-down         wifi interface up
          -cm, --change-mac             change mac address
          -ch, --connect-hotspot        connect to hotspot
          -gd, --get-dhcp               get dhcp address
          -rd, --rewrite-dns            rewrite dns servers
          -cv, --connect-vpn            connect to vpn server
```

### Donations

If you want to show your appreciation, you can donate via [Bitcoin](http://cryptopunks.org/contacts/). Thanks!
