FROM node:21

WORKDIR "/tmp"

RUN npm install \
            --cache /tmp/empty-cache \
            -g \
                htmllint-cli && \
    npm cache verify --force

CMD ["htmllint", "--help"]
