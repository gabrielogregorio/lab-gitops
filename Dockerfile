FROM node:20-alpine

WORKDIR /app

RUN addgroup -S appgroup && adduser -S appuser -G appgroup
RUN chown -R appuser:appgroup /app

COPY package.json yarn.lock ./

RUN yarn install

RUN chmod -R 777 /app

USER appuser

# tentar usar a imagem scratch
COPY ./src ./src

ENTRYPOINT ["yarn", "start"]
