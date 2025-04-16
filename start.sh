#!/bin/sh

echo "${HAPROXY_CONFIG}" > ./haproxy.cfg

exec haproxy -f ./haproxy.cfg
