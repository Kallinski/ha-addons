#!/usr/bin/with-contenv bashio

echo "Starting icecast service"
icecast -b -c /etc/icecast.xml 

echo "Starting ices service"
ices /ices-alsa.xml

