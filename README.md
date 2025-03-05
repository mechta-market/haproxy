Пример использования

```
services:
  proxy:
    image: ghcr.io/mechta-market/haproxy:latest
    environment:
      HAPROXY_CONFIG: |
        defaults
          mode http
          timeout connect 10s
          timeout client 5m
          timeout server 5m
          maxconn 3000
        frontend main
          bind :80
          use_backend prod
        backend prod
          http-request set-header Authorization "Bearer ${TOKEN}"
          server server1 192.168.1.25:9000
```
