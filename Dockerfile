FROM metabase/metabase:latest

# Copy startup script
COPY start.sh /app/start.sh

# Set health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=300s --retries=3 \
  CMD curl -f http://localhost:3000/api/health || exit 1

# Explicitly expose the port
EXPOSE 3000

# Use our startup script
CMD ["/app/start.sh"]
