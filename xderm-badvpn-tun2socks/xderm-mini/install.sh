#!/bin/bash
#mod by wegare
printf 'ctrl+c' | crontab -e > /dev/null
opkg update && opkg install unzip
cek=$(cat /etc/openwrt_r*)
if [[ $cek == *"LEDE"* ]] && [[ $cek == *"ar71xx"* ]]; then
wget --no-check-certificate "https://github.com/wegare123/backup/blob/main/lede/ar71xx.zip?raw=true" -O ~/ekstrak.zip && unzip ~/ekstrak.zip && cp ~/ar71xx/*.ipk ~/ && rm -rf ~/ekstrak.zip && rm -rf ~/ar71xx
elif [[ $cek == *"LEDE"* ]] && [[ $cek == *"brcm63xx"* ]]; then
wget --no-check-certificate "https://github.com/wegare123/backup/blob/main/lede/brcm63xx.zip?raw=true" -O ~/ekstrak.zip && unzip ~/ekstrak.zip && cp ~/brcm63xx/*.ipk ~/ && rm -rf ~/ekstrak.zip && rm -rf ~/brcm63xx
elif [[ $cek == *"LEDE"* ]] && [[ $cek == *"ramips"* ]]; then
wget --no-check-certificate "https://github.com/wegare123/backup/blob/main/lede/ramips.zip?raw=true" -O ~/ekstrak.zip && unzip ~/ekstrak.zip && cp ~/ramips/*.ipk ~/ && rm -rf ~/ekstrak.zip && rm -rf ~/ramips
elif [[ $cek == *"LEDE"* ]] && [[ $cek == *"sunxi"* ]]; then
wget --no-check-certificate "https://github.com/wegare123/backup/blob/main/lede/sunxi.zip?raw=true" -O ~/ekstrak.zip && unzip ~/ekstrak.zip && cp ~/sunxi/*.ipk ~/ && rm -rf ~/ekstrak.zip && rm -rf ~/sunxi
elif [[ $cek == *"Chaos Calmer"* ]] && [[ $cek == *"ar71xx"* ]]; then
wget --no-check-certificate "https://github.com/wegare123/backup/blob/main/cc/ar71xx.zip?raw=true" -O ~/ekstrak.zip && unzip ~/ekstrak.zip && cp ~/ar71xx/*.ipk ~/ && rm -rf ~/ekstrak.zip && rm -rf ~/ar71xx
elif [[ $cek == *"Chaos Calmer"* ]] && [[ $cek == *"brcm63xx"* ]]; then
wget --no-check-certificate "https://github.com/wegare123/backup/blob/main/cc/brcm63xx.zip?raw=true" -O ~/ekstrak.zip && unzip ~/ekstrak.zip && cp ~/brcm63xx/*.ipk ~/ && rm -rf ~/ekstrak.zip && rm -rf ~/brcm63xx
elif [[ $cek == *"Chaos Calmer"* ]] && [[ $cek == *"ramips"* ]]; then
wget --no-check-certificate "https://github.com/wegare123/backup/blob/main/cc/ramips.zip?raw=true" -O ~/ekstrak.zip && unzip ~/ekstrak.zip && cp ~/ramips/*.ipk ~/ && rm -rf ~/ekstrak.zip && rm -rf ~/ramips
elif [[ $cek == *"Chaos Calmer"* ]] && [[ $cek == *"sunxi"* ]]; then
wget --no-check-certificate "https://github.com/wegare123/backup/blob/main/cc/sunxi.zip?raw=true" -O ~/ekstrak.zip && unzip ~/ekstrak.zip && cp ~/sunxi/*.ipk ~/ && rm -rf ~/ekstrak.zip && rm -rf ~/sunxi
elif [[ $cek == *"OpenWrt"* ]] && [[ $cek == *"aarch64_cortex-a53"* ]]; then
wget --no-check-certificate "https://github.com/wegare123/backup/blob/main/openwrt/sunxi.zip?raw=true" -O ~/ekstrak.zip && unzip ~/ekstrak.zip && cp ~/sunxi/*.ipk ~/ && rm -rf ~/ekstrak.zip && rm -rf ~/sunxi
elif [[ $cek == *"OpenWrt"* ]] && [[ $cek == *"mips_24kc"* ]]; then
wget --no-check-certificate "https://github.com/wegare123/backup/blob/main/openwrt/ar71xx.zip?raw=true" -O ~/ekstrak.zip && unzip ~/ekstrak.zip && cp ~/ar71xx/*.ipk ~/ && rm -rf ~/ekstrak.zip && rm -rf ~/ar71xx
elif [[ $cek == *"OpenWrt"* ]] && [[ $cek == *"mipsel_24kc"* ]]; then
wget --no-check-certificate "https://github.com/wegare123/backup/blob/main/openwrt/ramips.zip?raw=true" -O ~/ekstrak.zip && unzip ~/ekstrak.zip && cp ~/ramips/*.ipk ~/ && rm -rf ~/ekstrak.zip && rm -rf ~/ramips
else
echo -e "version anda tidak terdeteksi!"
exit
fi
cek=$(cat /etc/openwrt_r*)
if [[ $cek == *"Chaos Calmer"* ]]; then
opkg update && opkg install kmod-ipv6 ip6tables radvd ip 6to4
fi
opkg install ip-full python3-pip curl screen openvpn-openssl && opkg install *.ipk
rm -r ~/*.ipk
wget --no-check-certificate "https://raw.githubusercontent.com/irfanhub/new/main/xderm-badvpn-tun2socks/xderm-mini/ssl" -O /usr/bin/ssl
wget --no-check-certificate "https://raw.githubusercontent.com/irfanhub/new/main/xderm-badvpn-tun2socks/xderm-mini/config.txt" -O /root/config.txt
chmod +x /usr/bin/ssl
rm -r ~/install.sh
sleep 2
echo "install selesai"
echo "untuk memulai tools silahkan jalankan perintah 'xderm-mini'"

				
