FROM golang:1.26-alpine

ENV CGO_ENABLED=0

WORKDIR /workspace
ADD . /workspace

RUN go build -o local-auth-webhook . && \
    mv local-auth-webhook /usr/bin/ && \
    rm -rf *

ENTRYPOINT [ "/usr/bin/local-auth-webhook" ]
