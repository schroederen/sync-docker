# Resilio Sync
#
# VERSION               0.1
#

FROM alpine
MAINTAINER Resilio Inc. <support@resilio.com>

RUN apk update && apk add libc6-compat && ln -snf /lib /lib64

ADD http://engineering-0.local/releases/desktop/SIT-latest/resilio-connect-agent_x64.tar.gz /tmp/agent.tgz
RUN tar -xf /tmp/agent.tgz -C /usr/local/bin rslagent && rm -f /tmp/agent.tgz

COPY rslagent.json /etc/default/
COPY init /init
VOLUME /storage
CMD ["/init"]
