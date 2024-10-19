#!/bin/bash

set -xe

sudo apt install -y ipcalc
curl -sSL https://raw.githubusercontent.com/ArnaudKunzi/lxc-iptag/main/lxc-iptag -o /usr/local/bin/lxc-iptag
curl -sSL https://raw.githubusercontent.com/ArnaudKunzi/lxc-iptag/main/lxc-iptag.service -o /lib/systemd/system/lxc-iptag.service
chmod +x /usr/local/bin/lxc-iptag

sudo systemctl daemon-reload
sudo systemctl enable lxc-iptag.service
sudo systemctl start lxc-iptag.service
