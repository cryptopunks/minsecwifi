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

and run **minsecwifi**:

```
$ sudo ./minsecwifi
```

### Donations

If you want to show your appreciation, you can donate via [Bitcoin](http://cryptopunks.org/contacts/). Thanks!
