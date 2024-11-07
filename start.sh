#!/bin/sh

echo "${HAPROXY_CONFIG}" > /haproxy.cfg

haproxy -f /haproxy.cfg
