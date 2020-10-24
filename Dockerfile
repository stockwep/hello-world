ARG REGISTRY_URL=
FROM ${REGISTRY_URL}node:9-alpine
EXPOSE 80
COPY . /src
RUN cd /src && npm install
CMD ["node", "/src/server.js"]
