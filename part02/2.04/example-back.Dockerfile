FROM golang:1.16

WORKDIR /app

ENV REQUEST_ORIGIN=http://localhost:5000
ENV REDIS_HOST=redis

COPY . .

RUN go build

EXPOSE 8080

CMD ["./server"]