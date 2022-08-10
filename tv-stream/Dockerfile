ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache icecast darkice

COPY darkice.cfg /
RUN chown icecast /darkice.cfg

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

USER icecast 

CMD [ "/run.sh" ]

