#!/usr/bin/with-contenv bashio

which icecast

cat /etc/icecast.xml

echo "Starting icecast service"
icecast -b -c /etc/icecast.xml 

echo "Starting darkice service"
darkice -c /root/darkice.cfg
