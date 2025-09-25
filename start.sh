#!/bin/bash
# Startup script for Metabase on Railway

# Set Java options for Railway's memory constraints
export JAVA_OPTS="-Xmx1g -Xms256m -Djava.awt.headless=true"

# Set Metabase configuration
export MB_JETTY_PORT=3000
export MB_EMBEDDING_SECRET_KEY=$(openssl rand -base64 64)

# Start Metabase
/app/run_metabase.sh
