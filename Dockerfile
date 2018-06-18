# Dockerfile
FROM alpine:3.7

ENV MY_VAR=$MY_VAR

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
