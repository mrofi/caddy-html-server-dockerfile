FROM alpine:latest

RUN apk add --no-cache \
  caddy \
  ca-certificates \
  bash

WORKDIR /app

COPY . .

EXPOSE 8080

CMD [ "caddy", "run" ]
