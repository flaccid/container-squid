FROM alpine

MAINTAINER Chris Fordham <chris@fordham.id.au>

RUN apk add --no-cache --update squid

VOLUME /etc/squid
VOLUME /var/cache/squid
VOLUME /var/log/squid

EXPOSE 3128

CMD ["squid", "-N", "-d1"]
