FROM golang:1.8.5-jessie

#RUN go get github.com/Bio-Core/jsonexample

RUN go get github.com/gorilla/mux

WORKDIR /go/src/github.com/Bio-Core/jsonexample

RUN go build main.go handlers.go routes.go router.go todo.go logger.go repo.go error.go

CMD ["./main"]
