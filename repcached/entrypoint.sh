#!/bin/bash

if [ -n "$SLAVE" ]; then
    /usr/bin/memcached -u memcache -vv -x $SLAVE $@
elif [[ $@ == *"-x"* ]]; then
    /usr/bin/memcached -u memcache $@
else
    /usr/bin/memcached -u memcache -x localhost
fi