FROM golang:latest AS build

WORKDIR /app
COPY . .
RUN go build hello.go

FROM hello-world

WORKDIR /app
COPY --from=build /app/hello .

CMD [ "/app/hello" ]
