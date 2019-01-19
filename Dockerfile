# Resilio Sync
#
# VERSION               0.1
#

FROM ubuntu
MAINTAINER Resilio Inc. <support@resilio.com>
LABEL com.resilio.version="2.6.3"

ADD https://download-cdn.resilio.com/2.6.3/Debian/resilio-sync_2.6.3-1_arm64.deb /tmp/sync.deb
RUN dpkg -i /tmp/sync.deb && rm /tmp/sync.deb

COPY sync.conf.default /etc/
COPY run_sync /usr/bin/

EXPOSE 8888
EXPOSE 55555

VOLUME /mnt/sync

ENTRYPOINT ["run_sync"]
CMD ["--config", "/mnt/sync/sync.conf"]
