FROM node:12-alpine
RUN apk add --no-cache python g++ make
WORKDIR /task-manager
COPY . .
RUN yarn install
RUN yarn run build
CMD ["node", "build/index.js"]
