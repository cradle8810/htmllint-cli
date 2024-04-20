FROM node:21
LABEL org.opencontainers.image.source = "https://github.com/cradle8810/htmllint-cli"

WORKDIR "/tmp"

RUN npm install \
            --cache /tmp/empty-cache \
            -g \
                htmllint-cli && \
    npm cache verify --force

RUN htmllint init

CMD ["htmllint", "--help"]
