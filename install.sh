#!/bin/bash

set -xe

apt install -y ipcalc
curl -sSL https://raw.githubusercontent.com/ArnaudKunzi/lxc-iptag/main/lxc-iptag -o /usr/local/bin/lxc-iptag
curl -sSL https://raw.githubusercontent.com/ArnaudKunzi/lxc-iptag/main/lxc-iptag.service -o /lib/systemd/system/lxc-iptag.service
chmod +x /usr/local/bin/lxc-iptag

systemctl daemon-reload
systemctl enable lxc-iptag.service
systemctl start lxc-iptag.service
