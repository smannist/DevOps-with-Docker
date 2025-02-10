FROM node:16-alpine

COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost:8080/

RUN npm install && \
    npm install -g serve && \
    npm run build

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]