#!/bin/sh

# config trojan
mkdir /etc/trojan-go
cat << EOF > /etc/trojan-go/config.json
{
    "password": [
        "$PASSWORD"
    ],
    "websocket": {
        "enabled": true,
        "path": "/",
        "host": ""
    }
}
EOF

# run trojan
/usr/local/bin/trojan-go -config /etc/trojan-go/config.json
