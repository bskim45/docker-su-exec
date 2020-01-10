FROM alpine:3.11

ARG BUILD_DATE

ENV BUILD_DATE ${BUILD_DATE}

LABEL org.label-schema.name="su-exec" \
    org.label-schema.url="https://hub.docker.com/r/bskim45/su-exec/" \
    org.label-schema.vcs-url="https://github.com/bskim45/docker-su-exec" \
    org.label-schema.build-date=$BUILD_DATE

RUN apk --update add su-exec && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]