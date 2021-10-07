FROM golang:1.16-alpine3.14 AS base

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .

RUN go build &&\
    adduser -D appuser &&\
    chown appuser /usr/src/app

FROM scratch

COPY --from=base /usr/src/app/server /server
COPY --from=base /lib /lib

CMD ["/server"]
