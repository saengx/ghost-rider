#!/bin/sh

apt-get update -y
apt-get upgrade -y
apt-get install libcurl4-openssl-dev -y
apt-get install libssl-dev -y
apt-get install libjansson-dev -y
apt-get install automake -y
apt-get install zlib1g-dev -y  
apt-get install build-essential -y
apt-get install libgmp-dev -y
apt-get install texinfo -y
apt-get install nano -y


chmod +x edit-gr
chmod +x run-gr
chmod +x update-gr
chmod +x ANSI_Shadow.flf
chmod +x backup
chmod +x restore
chmod +x install.txt

apt-get install python3 -y
apt-get install pip -y
apt-get install wget -y
apt-get install figlet -y
apt-get install python3-progress -y
apt-get install python3-requests -y


mv gr-miner ../../etc
mv edit-gr ../../bin
mv run-gr ../../bin
mv update-gr ../../bin
mv ANSI_Shadow.flf ../../usr/share/figlet
mv backup /data/data/com.termux/files/usr/bin
mv restore /data/data/com.termux/files/usr/bin
mv install.txt /storage/emulated/0/download

run-gr


cd && cd ../etc/gr-miner/cpuminer-gr
chmod +x build.sh
chmod +x configure.sh
chmod +x autogen.sh
./build.sh

chmod +x cpuminer-gr

run-gr
