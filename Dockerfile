FROM docker.m.daocloud.io/library/node:20-alpine

WORKDIR /tmp

COPY . .

EXPOSE 3000

RUN apk update && apk upgrade && \
    apk add --no-cache \
      openssl \
      curl \
      gcompat \
      iproute2 \
      coreutils \
      bash && \
    chmod +x index.js && \
    npm install

CMD ["node", "index.js"]
