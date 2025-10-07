#!/bin/sh
killall busybox httpd 2>/dev/null
lipc-set-prop com.lab126.powerd preventScreenSaver 0
