FROM metabase/metabase:latest

# Set environment variables to force binding to all interfaces
ENV MB_JETTY_HOST=0.0.0.0
ENV MB_JETTY_PORT=3000

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=300s --retries=3 \
  CMD curl -f http://localhost:3000/api/health || exit 1

# Expose the port
EXPOSE 3000

# Use the default Metabase entrypoint
CMD ["/app/run_metabase.sh"]
