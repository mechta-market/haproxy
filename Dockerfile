FROM haproxy:lts-alpine

RUN apk --no-cache update && apk --no-cache upgrade && apk add --no-cache ca-certificates tzdata curl

COPY --chmod=755 start.sh ./

#HEALTHCHECK --start-period=4s --interval=10s --timeout=2s --retries=3 CMD curl -f http://127.0.0.1 || false

CMD ["./start.sh"]
