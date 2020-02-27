sudo cloudflared service uninstall
sudo rm -f /usr/local/bin/cloudflared
sudo rm -rf /usr/local/etc/cloudflared
networksetup -setdnsservers Ethernet Empty
networksetup -setdnsservers Wi-Fi Empty
dscacheutil -flushcache
networksetup -setdnsservers Ethernet 8.8.8.8 8.8.4.4
networksetup -setdnsservers Wi-Fi 8.8.8.8 8.8.4.4
nslookup cloudflare.com
