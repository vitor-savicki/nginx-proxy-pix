#!/bin/sh

HOST_SERVER='localhost.local'
TARGET_SERVER='google.com'

echo ${TARGET_SERVER}
echo ${HOST_SERVER}

/bin/sed -i "s/<proxy_pass_placeholder>/${TARGET_SERVER}/" /etc/nginx/conf.d/default.conf
/bin/sed -i "s/<host_placeholder>/${HOST_SERVER}/" /etc/nginx/conf.d/default.conf

nginx -g "daemon off;"
