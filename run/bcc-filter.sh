#!/bin/sh
set -x

##########################################################
# Removes all internal OpenShift cluster TCP connections #
# from a bcc-tcpconnect log				 #
##########################################################

sed -i '/^PID /d' $1

sed -i '/127.0.0.1 *127.0.0.1/d' $1
sed -i '/::1 *::1/d' $1

# 192.168.x.11 -> internal IPs
sed -i '/192.168.126.11 *192.168.126.11/d' $1
sed -i '/192.168.130.11 *192.168.130.11/d' $1
sed -i '/192.168.130.11 *10.128.0.[0-9]*/d' $1
sed -i '/192.168.130.11 *172.30.[0-9]*.[0-9]*/d' $1

# 10.128.0.x -> internal IPs
sed -i '/10.128.0.[0-9]* *192.168.126.11/d' $1
sed -i '/10.128.0.[0-9]* *192.168.130.11/d' $1
sed -i '/10.128.0.[0-9]* *10.128.0.[0-9]*/d' $1
sed -i '/10.128.0.[0-9]* *172.30.[0-9]*.[0-9]*/d' $1
