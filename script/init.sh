#! /bin/sh

spawn-fcgi -s /run/fcgiwrap.socket /usr/bin/fcgiwrap
chmod 777 /run/fcgiwrap.socket
nginx -g "daemon off;"
