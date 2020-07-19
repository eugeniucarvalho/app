FROM alpine:3.10
RUN apk update \
        && apk upgrade \
        && apk add --no-cache \
        ca-certificates \
        && update-ca-certificates 2>/dev/null || true
RUN mkdir /app 
COPY server /app
WORKDIR /app 
EXPOSE 8000
VOLUME ["/app"]
CMD ["/app/server"]
