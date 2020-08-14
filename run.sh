#!/bin/sh

export DAV_METHODS=${DAV_METHODS:=PUT DELETE MKCOL COPY MOVE}
PUID=${PUID}
PGID=${PGID}
#TZ

export USER
export GROUP

if [ -n $PGID ]; then
    addgroup -g $PGID group
    GROUP=group
fi

if [ -n $PUID ]; then
    if [ -n $PGID ]; then
        adduser --uid $PUID --ingroup group user
    else
        adduser --uid $PUID user
    fi
    USER=user
else
    USER=nginx
fi

envsubst < /etc/nginx/nginx.template.conf > /etc/nginx/nginx.conf

cat 'GOOOOO:'
cat /etc/nginx/nginx.conf

exec nginx -g "daemon off;"
