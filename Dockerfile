FROM alpine

MAINTAINER Chris Fordham <chris@fordham.id.au>

RUN apk add --no-cache --update squid sudo && \
    echo -e "Defaults:squid !requiretty" > /etc/sudoers.d/squid &&\
    echo -e "squid ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/squid

VOLUME /etc/squid
VOLUME /var/cache/squid
VOLUME /var/log/squid


EXPOSE 3128
USER squid

CMD ["sudo", "squid", "-N", "-d1"]
