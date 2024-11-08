#!/bin/sh

echo "${HAPROXY_CONFIG}" > ./haproxy.cfg
echo "

frontend health
  mode http
  timeout connect 10s
  timeout client 7s
  maxconn 10
  bind 127.0.0.1:80
  http-request return status 200 if { src 127.0.0.0/8 } { path /health }
" >> ./haproxy.cfg

haproxy -f ./haproxy.cfg
