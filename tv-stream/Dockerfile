ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache pulseaudio pulseaudio-alsa pulseaudio-utils alsa-utils alsa-plugins-pulse icecast darkice 

COPY icecast.xml /
RUN chown icecast /icecast.xml

COPY darkice.cfg /
RUN chown icecast /darkice.cfg

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

USER icecast 

CMD [ "/run.sh" ]

