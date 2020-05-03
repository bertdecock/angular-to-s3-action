FROM alpine:3.10
RUN apk add nodejs && apk add npm
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
