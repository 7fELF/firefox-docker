FROM ubuntu:disco

WORKDIR /usr/src
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y xdg-utils libxss1 pulseaudio libcanberra-gtk3-module ubuntu-restricted-extras \
    && apt-get clean \
    && echo enable-shm=no >> /etc/pulse/client.conf

RUN apt-get install -y firefox

ENV PULSE_SERVER /run/pulse/native

COPY docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["firefox"]
