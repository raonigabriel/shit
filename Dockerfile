FROM alpine:latest

COPY ./wait-for /bin/wait-for
COPY ./ok.sh /bin/ok.sh
COPY ./error.sh /bin/error.sh

# Install tools
RUN apk add --no-cache tini curl wget netcat-openbsd


ENTRYPOINT ["/sbin/tini", "--"]
CMD ["/bin/error.sh"]
#CMD ["/bin/ok.sh"]

