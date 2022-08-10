ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache icecast darkice

COPY icecast.xml /root/
#RUN chown -R icecast2 /etc/icecast2
#RUN mkdir -p /var/log/icecast2 && \
#    chown -R icecast2 /var/log/icecast2 && \
#    chown -R icecast2 /usr/share/icecast2
COPY darkice.cfg /root/

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]

