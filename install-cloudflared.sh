# Step 1: Creating temporary folder, downloading and unpacking cloudflared tgz
mkdir ~/tmp
cd ~/tmp
curl -L https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-darwin-amd64.tgz -o cloudflared-darwin-amd64.tgz
tar -xvf cloudflared-darwin-amd64.tgz 

# Step 2: Installing and configuring cloudflared as a service
cp ./cloudflared /usr/local/bin/cloudflared
chmod a+rx /usr/local/bin/cloudflared
echo 'proxy-dns: true
no-autoupdate: true
proxy-dns-upstream:
 - https://1.1.1.1/dns-query
 - https://dns.google/dns-query
 - https://1.0.0.1/dns-query' > config.yml
mkdir -p /usr/local/etc/cloudflared
cp ./config.yml /usr/local/etc/cloudflared/config.yml
/usr/local/bin/cloudflared service install

# Step 3: Removing temporary files and testing configuration
cd
rm -rf ~/tmp
networksetup -setdnsservers Ethernet Empty
dscacheutil -flushcache
networksetup -setdnsservers Ethernet 127.0.0.1
open https://1.1.1.1/help
