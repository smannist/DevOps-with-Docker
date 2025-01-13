FROM node:16-alpine

COPY . .

RUN npm install && \
    npm install -g serve && \
    npm run build

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]