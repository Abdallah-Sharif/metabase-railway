#!/bin/bash
echo "Starting Metabase on Render..."
echo "JAVA_OPTS: $JAVA_OPTS"
echo "MB_JETTY_PORT: $MB_JETTY_PORT"

# Start Metabase
exec /app/run_metabase.sh
