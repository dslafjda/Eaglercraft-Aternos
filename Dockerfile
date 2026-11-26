FROM node:20-alpine

WORKDIR /app

RUN npm install ws

COPY server.js ./

ENV PORT=8080
ENV TARGET_HOST=127.0.0.1
ENV TARGET_PORT=25565

EXPOSE 8080

CMD ["node", "server.js"]
