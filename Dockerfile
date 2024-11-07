FROM haproxy:lts-alpine

COPY --chmod=755 start.sh ./

#HEALTHCHECK --start-period=4s --interval=10s --timeout=2s --retries=3 CMD curl -f http://localhost || false

CMD ["./start.sh"]
