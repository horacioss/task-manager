FROM node:14.15-alpine
WORKDIR /app
COPY . .
RUN yarn install
RUN yarn build
RUN yarn global add serve
CMD [ "serve", "-s", "build" ]
