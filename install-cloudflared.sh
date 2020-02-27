mkdir tmp
cd tmp
curl -L https://bin.equinox.io/c/VdrWdbjqyF/cloudflared-stable-darwin-amd64.tgz -o cloudflared-stable-darwin-amd64.tgz
tar -xvf cloudflared-stable-darwin-amd64.tgz 
sudo cp ./cloudflared /usr/local/bin/cloudflared
sudo chmod a+rx /usr/local/bin/cloudflared
echo 'proxy-dns: true
proxy-dns-upstream:
 - https://1.1.1.1/dns-query
 - https://1.0.0.1/dns-query' > config.yml
sudo mkdir -p /usr/local/etc/cloudflared
sudo cp ./config.yml /usr/local/etc/cloudflared/config.yml
sudo cloudflared service install
cd
rm -r tmp
networksetup -setdnsservers Ethernet Empty
networksetup -setdnsservers Wi-Fi Empty
dscacheutil -flushcache
networksetup -setdnsservers Ethernet 127.0.0.1
networksetup -setdnsservers Wi-Fi 127.0.0.1
nslookup cloudflare.com
