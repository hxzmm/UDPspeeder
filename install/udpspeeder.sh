mkdir udpspeeder
cd udpspeeder
wget https://github.com/wangyu-/UDPspeeder/releases/download/20180806.0/speederv2_linux.tar.gz
tar zxf speederv2_linux.tar.gz
mv speederv2_amd64 speederv2
wget https://raw.githubusercontent.com/hxzmm/UDPspeeder/master/install/udpspeeder.conf
wget -O /etc/systemd/system/udpspeeder.service https://raw.githubusercontent.com/hxzmm/UDPspeeder/master/install/udpspeeder
chmod 644 /etc/systemd/system/udpspeeder.service
systemctl daemon-reload
systemctl enable udpspeeder
systemctl restart udpspeeder
systemctl status udpspeeder
