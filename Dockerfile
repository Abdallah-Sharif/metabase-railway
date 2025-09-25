FROM metabase/metabase:latest

# Set health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=300s --retries=3 \
  CMD curl -f http://localhost:3000/api/health || exit 1

# Expose the port
EXPOSE 3000
