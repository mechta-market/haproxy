#!/bin/sh

echo "${HAPROXY_CONFIG}" > ./haproxy.cfg

exec haproxy -vv -f ./haproxy.cfg
