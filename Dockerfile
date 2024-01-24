FROM golang:1.21

WORKDIR /app
COPY main.go .

RUN go mod init hello
RUN go build

CMD [ "./hello" ]
#CMD [ "tail","-f",">","/dev/null" ]