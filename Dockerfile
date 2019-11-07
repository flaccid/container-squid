FROM alpine

MAINTAINER Chris Fordham <chris@fordham.id.au>

RUN apk add --no-cache --update squid

VOLUME /etc/squid
VOLUME /var/cache/squid
VOLUME /var/log/squid

RUN touch /var/run/squid.pid && \
    chown squid:squid /var/run/squid.pid

EXPOSE 3128

USER squid

CMD ["squid", "-N", "-d1"]
