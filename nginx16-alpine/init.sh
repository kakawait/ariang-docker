#!/bin/sh

if [ "$ARIA_HOST" != "" ]; then
    echo "Update rpcHost"
    sed -i "s/rpcHost:\"[a-zA-Z0-9\.-_]*\"/rpcHost:\"$ARIA_HOST\"/" /usr/share/nginx/html/js/aria-ng*
fi
if [ "$ARIA_PORT" != "" ]; then
    echo "Update rpcPort"
    sed -i "s/rpcPort:\"[[:digit:]]*\"/rpcPort:\"$ARIA_PORT\"/" /usr/share/nginx/html/js/aria-ng*
fi
if [ "$ARIA_INTERFACE" != "" ]; then
    echo "Update rpcInterface"
    sed -i "s/rpcInterface:\"[[:alpha:]]*\"/rpcInterface:\"$ARIA_INTERFACE\"/" /usr/share/nginx/html/js/aria-ng*
fi
if [ "$ARIA_PROTOCOL" != "" ]; then
    echo "Update protocol"
    sed -i "s/protocol:\"[a-zA-Z]*\"/protocol:\"$ARIA_PROTOCOL\"/" /usr/share/nginx/html/js/aria-ng*
fi
if [ "$ARIA_HTTP_METHOD" != "" ]; then
    echo "Update httpMethod"
    sed -i "s/httpMethod:\"[a-zA-Z]*\"/httpMethod:\"$ARIA_HTTP_METHOD\"/" /usr/share/nginx/html/js/aria-ng*
fi
if [ "$ARIA_SECRET" != "" ]; then
    echo "Update secret"
    sed -i "s/secret:\"[a-zA-Z0-9\.-_]*\"/secret:\"$(echo -n $ARIA_SECRET | base64)\"/" /usr/share/nginx/html/js/aria-ng*
fi

nginx -g "daemon off;"
