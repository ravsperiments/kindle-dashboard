#!/bin/sh
# Serve /mnt/us over HTTP so the browser can load /kindle-dashboard/index.html
killall busybox httpd 2>/dev/null
/usr/bin/busybox httpd -f -p 8080 -h /mnt/us &
lipc-set-prop com.lab126.powerd preventScreenSaver 1
