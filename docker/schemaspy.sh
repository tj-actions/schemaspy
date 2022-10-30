#!/bin/sh

if [ -d "$SCHEMASPY_DRIVERS" ]; then
  export DRIVER_PATH=$SCHEMASPY_DRIVERS
else
  export DRIVER_PATH=/drivers_inc/
fi

echo "Using drivers:"
find $DRIVER_PATH -maxdepth 1 -type f -name "*.jar" | sed -e 's/  */, /g'

exec java -jar /usr/local/lib/schemaspy/schemaspy*.jar -dp $DRIVER_PATH "$@"