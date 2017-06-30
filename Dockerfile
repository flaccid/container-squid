FROM alpine

MAINTAINER Chris Fordham <chris@fordham-nagy.id.au>

RUN apk update && \
  apk add --no-cache --upgrade squid && \
  rm -rf /var/lib/apt/lists/*

EXPOSE 3128

CMD ["squid", "-N", "-d1"]
