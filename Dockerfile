FROM alpine

MAINTAINER Chris Fordham <chris@fordham.id.au>

RUN apk add --no-cache --update squid

VOLUME /etc/squid
VOLUME /var/cache/squid
VOLUME /var/log/squid

RUN ln -sf /dev/stdout /var/log/squid/access.log
RUN ln -sf /dev/stdout /var/log/squid/cache.log

EXPOSE 3128

USER squid

CMD ["squid", "-N", "-d1"]
