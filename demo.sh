#/bin/bash
#
export ONEPROXY_HOME=/usr/local/oneproxy

# valgrind --leak-check=full \
${ONEPROXY_HOME}/bin/oneproxy --defaults-file=${ONEPROXY_HOME}/conf/proxy.conf
