#!/usr/bin/with-contenv bashio

echo "List audio devices"
aplay -l

echo "Starting icecast service"
icecast -b -c /etc/icecast.xml 

echo "Starting ices service"
ices /ices-alsa.xml

