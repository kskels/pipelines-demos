# From https://github.com/homeport/gonut/tree/master/assets/sample-apps/golang

FROM registry.access.redhat.com/ubi8/go-toolset AS build

COPY main.go .
ENV CGO_ENABLED=0
RUN go build \
    -tags netgo \
    -ldflags "-s -w -extldflags '-static'" \
    -o /tmp/helloworld \
    main.go

FROM scratch
COPY --from=build /tmp/helloworld ./helloworld
ENTRYPOINT [ "./helloworld" ]
EXPOSE 8080
