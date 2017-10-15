#!/bin/bash

if [ -z "$1" ]; then
  tail -f /var/log/nginx/*error.log /srv/www/shop/app/logs/shop/applog.log
else
  tail -n "$1" /var/log/nginx/*error.log /srv/www/shop/app/logs/shop/applog.log
fi
