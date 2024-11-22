FROM alpine:latest

LABEL org.opencontainers.image.authors="github@freelyit.nl"

ENV TERM=linux
RUN apk --no-cache add apache2-utils

ENTRYPOINT ["/usr/bin/ab"]
CMD ["--help"]
