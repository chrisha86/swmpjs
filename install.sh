#!/bin/bash
npm install
mkdir /usr/local/share/swmpjs
cp -a . /usr/local/share/swmpjs
cp init.sh /etc/init.d/swmpjs
chmod +x /etc/init.d/swmpjs
