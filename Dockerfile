LABEL org.opencontainers.image.url="https://github.com/stockwep/hello-world/"
LABEL org.opencontainers.image.source="https://github.com/stockwep/hello-world/"
ARG REGISTRY_FROM_URL=
FROM ${REGISTRY_FROM_URL}node:15-alpine
EXPOSE 80
COPY . /src
RUN cd /src && npm install
CMD ["node", "/src/server.js"]
