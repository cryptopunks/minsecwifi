## MinSecWifi

### Description

Minimalistic and secure Wifi-manager based by **wpa_supplicant**, **openvpn** and **macchanger**.

## Installation and Setup

```
$ sudo apt-get install openvpn wpasupplicant macchanger 
$ git clone https://github.com/cryptopunks/minsecwifi && cd minsecwifi 

```

Run installer:

```
$ sudo ./install.sh
```

Edit **/etc/minsecwifi.conf**:

```
$ sudo minsecwifi -em
```

Creating new **/etc/wpa_supplicant/wpa_supplicant.conf**: 

```
$ minsecwifi --example-wpasupplicant | sudo tee --append /etc/wpa_supplicant/wpa_supplicant.conf
```

Editing **/etc/wpa_supplicant/wpa_supplicant.conf**:

```
$ sudo minsecwifi --edit-wpasupplicant`

```

Assign access rights:

```
$ sudo minsecwifi --fix-permissions
```

Or:

```
$ sudo chown root:root /etc/wpa_supplicant/wpa_supplicant.conf && sudo chmod 600 /etc/wpa_supplicant/wpa_supplicant.conf
```

## Use

Run **minsecwifi** with needed argument:

```
$ minsecwifi
Usage:
./minsecwifi [OPTION] 
          -s, --scan                    scan networks
          -r, --run                     run all services 
                                        (variable START_SEQUENCE in minsecwifi.conf)
          -k, --killall                 kill all services
          -ew, --edit-wpasupplicant     edit wpa_supplicant.conf
          -em, --edit-minsecwifi        edit minsecwifi.conf
          -ub, --unblock                unblock wifi adaptor
          -iu, --interface-up           wifi interface down
          -id, --interface-down         wifi interface up
          -cm, --change-mac             change mac address
          -ch, --connect-hotspot        connect to hotspot
          -gd, --get-dhcp               get dhcp address
          -rd, --rewrite-dns            rewrite dns servers
          -cv, --connect-vpn            connect to vpn server
          -xw, --example-wpasupplicant  show example config for wpa_supplicant
          -xm, --example-minsecwifi     show example config for minsecwifi
          -fp, --fix-permissions        fix permissions for wpa_supplicant.conf
```

## Upgrading

Run: 

```
$ git clone https://github.com/cryptopunks/minsecwifi && cd minsecwifi
$ sudo ./install.sh
```

or 

```
$ cd <minsecwifi_local_git_repo>
$ git pull 
$ sudo ./install.sh
```

## Deinstalling

Run: 

```
$ cd <minsecwifi_local_git_repo>
$ sudo ./uninstall.sh
```

### Donations

If you want to show your appreciation, you can donate via Bitcoin: **bc1qs7v6vfp0xpe2slcpwlhftdeqj2w92r3pkykjn6**. Thanks!
