#!/bin/sh
if [ ! -f UUID ]; then
  UUID="9aae7d46-d507-4c1c-a9e9-00bc4b2e830b"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

