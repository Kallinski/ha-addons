#!/usr/bin/with-contenv bashio

echo "Starting icecast service"
icecast 

echo "Starting darkice service"
darkice -c /root/darkice.cfg
