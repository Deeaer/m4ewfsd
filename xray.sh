#!/bin/sh
if [ ! -f UUID ]; then
  UUID="267c8e27-f0cf-4f39-ac70-97357a869d79"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

