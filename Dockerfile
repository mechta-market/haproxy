FROM haproxy:lts-alpine

USER root

RUN apk --no-cache update && apk --no-cache upgrade && apk add --no-cache ca-certificates tzdata curl

USER haproxy

COPY --chmod=755 start.sh ./

CMD ["./start.sh"]
