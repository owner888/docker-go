FROM golang:latest

WORKER /app

COPY ./ /app

RUN go.mod download

ENTRYPOINT go run commands/runserver.go
