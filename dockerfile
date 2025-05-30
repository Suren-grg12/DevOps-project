FROM node:lts-alpine
LABEL np.com.techaxis.version=1.0
ARG SRC_DIR=/var/node
ENV PORT=3000 
WORKDIR "$SRC_DIR"
COPY ./air-quality-app/package.json "$SRC_DIR"
RUN npm install
COPY ./air-quality-app "$SRC_DIR"
USER node
EXPOSE "$PORT"
CMD [ "node", "./bin/www" ]

