ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache icecast darkice

COPY icecast.xml /root/
RUN chmod 777 /root/icecast.xml
#RUN chown -R icecast /etc/icecast
#RUN mkdir -p /var/log/icecast && \
#    chown -R icecast /var/log/icecast && \
#    chown -R icecast /usr/share/icecast
COPY darkice.cfg /root/

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

RUN adduser -S streamer
USER streamer

CMD [ "/run.sh" ]

