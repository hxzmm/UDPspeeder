mkdir udpspeeder
cd udpspeeder
wget https://github.com/wangyu-/UDPspeeder/releases/download/20170806.0/speederv2_linux.tar.gz
tar zxf speederv2_linux.tar.gz
mv speederv2_amd64 speederv2
wget https://raw.githubusercontent.com/hxzmm/UDPspeeder/branch_libev/install/udpspeeder.conf
wget -O /etc/init.d/udpspeeder https://raw.githubusercontent.com/hxzmm/UDPspeeder/branch_libev/install/udpspeeder
chmod 755 /etc/init.d/udpspeeder; update-rc.d udpspeeder defaults; service udpspeeder start
