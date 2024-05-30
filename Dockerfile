FROM alpine:latest

RUN apk add --update --no-cache bash curl yq jq

COPY d2c.sh /usr/local/bin
COPY d2c_example.toml /etc/d2c/d2c.toml

ENTRYPOINT ["/usr/local/bin/d2c.sh"]
