#!/bin/bash
#Install bbrplus.6.1.1

cd
wget -O 611.deb https://github.com/UJX6N/bbrplus-6.x_stable/releases/download/6.1.1-bbrplus/Debian-Ubuntu_Required_linux-image-6.1.1-bbrplus_6.1.1-bbrplus-1_amd64.deb
chmod +x 611.deb
dpkg -i 611.deb
rm -f 611.deb
rm -f 611.ssh
echo '
net.ipv4.tcp_congestion_control = bbrplus
net.core.default_qdisc = fq' >>/etc/sysctl.conf
reboot