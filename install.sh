#!/bin/bash
npm install && \
cp -a . /usr/local/share/swmpjs && \
(! test -e /etc/init.d || cp init.sh /etc/init.d/swmpjs) && \
(! test -e /etc/init.d || chmod +x /etc/init.d/swmpjs) && \
(! test -e /etc/init.d || update-rc.d swmpjs enable) && \
(! test -e /etc/systemd/system || systemctl enable swmpjs.service) && \
echo "installed"

