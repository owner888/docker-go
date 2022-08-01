# latest 会提示 CompileDaemon: not found
# FROM golang:latest
FROM golang:1.16.0-alpine3.13

WORKDIR /app

COPY ./ /app

RUN go mod download

# ENTRYPOINT go run commands/runserver.go

RUN go get github.com/githubnemo/CompileDaemon

# 告诉 CompileDaemon 
ENTRYPOINT CompileDaemon --build="go build commands/runserver.go" --command=./runserver
