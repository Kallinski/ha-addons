ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache pulseaudio pulseaudio-alsa pulseaudio-utils alsa-utils icecast ices

RUN aplay -l

COPY icecast.xml /etc/icecast.xml
RUN chown icecast /etc/icecast.xml

COPY ices-alsa.xml /
RUN chown icecast /ices-alsa.xml

RUN mkdir -p /var/log/ices && chown -R icecast /var/log/ices

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

USER icecast 

CMD [ "/run.sh" ]

