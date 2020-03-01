# cloudflared
cloudflared DNS over HTTPS (DoH) for macOS

Scripts to install/uninstall Cloudflare's DNS over HTTPS (DoH) client on macOS

Installation

curl -L https://raw.githubusercontent.com/b0gdanw/cloudflared-macos/master/install-cloudflared.sh -o install-cloudflared.sh

chmod +x ./install-cloudflared.sh 

sudo ./install-cloudflared.sh

Uninstall

curl -L https://raw.githubusercontent.com/b0gdanw/cloudflared-macos/master/uninstall-cloudflared.sh -o uninstall-cloudflared.sh

chmod +x ./uninstall-cloudflared.sh

sudo ./uninstall-cloudflared.sh

Update 

cloudflared -v

sudo cloudflared update

Cloudflare test
https://1.1.1.1/help

Credits & Resources:

Cloudflare - Running a DNS over HTTPS Client
https://developers.cloudflare.com/1.1.1.1/dns-over-https/cloudflared-proxy/

Cloudflare - Downloads - Argo Tunnel 
https://developers.cloudflare.com/argo-tunnel/downloads/

Command-line Arguments - Argo Tunnel https://developers.cloudflare.com/argo-tunnel/reference/arguments/

DNS over HTTPS · curl/curl Wiki · GitHub https://github.com/curl/curl/wiki/DNS-over-HTTPS
