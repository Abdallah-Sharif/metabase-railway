FROM metabase/metabase:latest
ENV MB_JETTY_HOST=0.0.0.0
ENV MB_JETTY_PORT=3000
ENV JAVA_OPTS="-Xmx100m -Xms50m -XX:MaxRAM=200m -XX:+UseSerialGC"
HEALTHCHECK --interval=60s --timeout=10s --start-period=600s --retries=5 \
  CMD curl -f http://localhost:3000/api/health || exit 1
EXPOSE 3000
CMD ["/app/run_metabase.sh"]
