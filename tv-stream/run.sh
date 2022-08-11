#!/usr/bin/with-contenv bashio

echo "Starting icecast server"
icecast -b -c /icecast.xml 

echo "Starting darkice"
darkice -c /darkice.cfg

