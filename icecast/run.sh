#!/usr/bin/execlineb -P

s6-setuidgid icecast2

#echo /usr/bin
#ls /usr/bin/exec*

#echo /var/log
#ls /var/log

#echo /etc/default
# cat /etc/default/icecast2

#echo /etc/init.d
#ls /etc/init.d

echo "Starting icecast2 service"
#icecast2 -c /etc/icecast2/icecast.xml
service icecast2 start

echo "Starting darkice service"
darkice -c /root/darkice.cfg
