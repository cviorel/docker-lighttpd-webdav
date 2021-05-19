FROM alpine:latest
MAINTAINER Viorel Ciucu <viorel.ciucu@gmail.com>

ENV PACKAGE_LIST="lighttpd lighttpd-mod_webdav lighttpd-mod_auth apache2-utils"

RUN apk add --no-cache ${PACKAGE_LIST} && rm -rf /tmp/* && rm -rf /var/cache/apk/*

VOLUME [ "/config", "/webdav" ]

ADD files/* /etc/lighttpd/
ADD ./entrypoint.sh /entrypoint.sh

EXPOSE 80

RUN chmod u+x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
