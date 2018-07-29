FROM golang:1.10.3-alpine3.7 as build
ENV RELEASE_TAG 2.0.16
RUN apk --no-cache add git && \
    git clone https://github.com/jedisct1/dnscrypt-proxy /go/src/github.com/jedisct1/ && \
    cd /go/src/github.com/jedisct1/dnscrypt-proxy && \
    git checkout tags/${RELEASE_TAG} && \
    CGO_ENABLED=0 GOOS=linux go install -a -ldflags '-s -w -extldflags "-static"' -v ./...

FROM alpine:3.7
RUN apk --no-cache add ca-certificates
COPY --from=build /go/bin/dnscrypt-proxy /usr/local/bin/dnscrypt-proxy
# ADD config /config
EXPOSE 53/udp

CMD ["dnscrypt-proxy", "-config", "/config/dnscrypt-proxy.toml"]
