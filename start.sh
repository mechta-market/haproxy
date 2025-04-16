#!/bin/sh

echo "${HAPROXY_CONFIG}" > ./haproxy.cfg

exec haproxy -v -f ./haproxy.cfg
