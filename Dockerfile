FROM golang:alpine3.14

WORKDIR /app 

COPY go.mod go.sum ./

RUN go mod download 

COPY . .

EXPOSE 4000 

CMD ["/app/main"]
