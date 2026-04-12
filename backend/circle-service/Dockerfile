FROM golang:1.26-alpine

ENV CGO_ENABLED=0

WORKDIR /workspace
ADD . /workspace

RUN go build -o server ./cmd/server && \
    mv server /usr/bin/ && \
    rm -rf *

ENTRYPOINT [ "/usr/bin/server" ]
