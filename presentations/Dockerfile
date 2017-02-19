FROM golang

RUN go get golang.org/x/tools/cmd/present

ENTRYPOINT ["present", "-http=0.0.0.0:3999"]
