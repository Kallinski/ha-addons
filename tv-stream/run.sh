#!/usr/bin/with-contenv bashio

echo "Starting icecast service"
icecast -c /etc/icecast.xml 

echo "Starting darkice service"
darkice -c /root/darkice.cfg
