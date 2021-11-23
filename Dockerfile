FROM ubuntu:latest

COPY cmd.sh /app/cmd.sh
COPY entrypoint.sh /app/entrypoint.sh
COPY start.sh /app/start.sh

RUN  chmod 0755 /app/*.sh

ENTRYPOINT ["/app/start.sh"]
CMD ["/app/cmd.sh"]



