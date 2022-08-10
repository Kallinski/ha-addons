ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache icecast2 darkice

COPY icecast.xml /etc/icecast2
RUN chown -R icecast2 /etc/icecast2
RUN mkdir -p /var/log/icecast2 && \
    chown -R icecast2 /var/log/icecast2 && \
    chown -R icecast2 /usr/share/icecast2
COPY darkice.cfg /root/

EXPOSE 8000

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]

