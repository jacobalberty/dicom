FROM golang:alpine
WORKDIR /go/src/github.com/suyashkumar/dicom
COPY . .
RUN apk add --no-cache make git tar zip
RUN go get github.com/golang/dep/cmd/dep
RUN make
