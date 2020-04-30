FROM alpine:3.6

MAINTAINER John D. Allen <jallen@a10networks.com>

ARG SYSLOG_VERSION="3.12.1"
ARG BUILD_CORES=2

RUN apk update && apk add --no-cache \
   libdbi-drivers \
   syslog-ng 

COPY ./etc/ /etc/

EXPOSE 514/udp
EXPOSE 601/tcp
EXPOSE 6514/tcp

ADD build_container.sh /
ADD Dockerfile /
ADD README /

ENTRYPOINT ["/usr/sbin/syslog-ng", "-F"]

