#!/bin/bash
# 每次修改代码都需要走下面两步太麻烦, 使用 CompileDaemon
# docker build -t docker-go .
# docker run -v /Users/coffee/Documents/golang/src/docker-go/:/app -p 80:80 docker-go

# RUN go get github.com/githubnemo/CompileDaemon

# ENTRYPOINT CompileDaemon --build="go build commands/runserver.go" --command=./runserver
