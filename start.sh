#!/bin/sh

echo "${HAPROXY_CONFIG}" > ./haproxy.cfg
echo "
frontend health
  mode http
  timeout client 7s
  maxconn 10
  bind :3003
  http-request return status 200 if { path /health }
" >> ./haproxy.cfg

haproxy -f ./haproxy.cfg
