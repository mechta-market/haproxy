FROM haproxy:lts-alpine

COPY start.sh /
RUN chmod +x /start.sh

#HEALTHCHECK --start-period=4s --interval=10s --timeout=2s --retries=3 CMD curl -f http://localhost || false

CMD ["/start.sh"]
