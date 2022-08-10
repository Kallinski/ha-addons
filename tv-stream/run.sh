#!/usr/bin/with-contenv bashio

ls -la /darkice.cfg

echo "Starting icecast service"
icecast -b -c /etc/icecast.xml 

echo "Starting darkice service"
darkice -c /darkice.cfg
