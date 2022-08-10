#!/usr/bin/with-contenv bashio

echo "Starting icecast2 service"
service icecast2 start

echo "Starting darkice service"
darkice -c /root/darkice.cfg
