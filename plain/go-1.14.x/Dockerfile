FROM golang:1.14

LABEL maintainer="460876880@qq.com"

ENV GOPATH /go
# ENV HTTP_PROXY "http://your-own-proxy-addr.your-org.com:3128"
# ENV HTTPS_PROXY "http://your-own-proxy-addr.your-org.com:3128"

RUN set -x \
    && go get -u -v github.com/revel/revel \
    && go get -u -v github.com/revel/cmd/revel \
    && go get -u github.com/jinzhu/copier \
    && go get -u github.com/golang/protobuf/proto \
    && go get -u github.com/globalsign/mgo/bson \
    && go get -u github.com/lujiacn/revpage \
    && go get -u github.com/lujiacn/utils \
    && go get -u github.com/lujiacn/revauth \
    && go get -u github.com/lujiacn/revel-csrf \
    && go get -u github.com/teris-io/shortid \
    && go get -u github.com/tealeg/xlsx \
    && go get -u google.golang.org/grpc \
    && go get -u gopkg.in/lujiacn/mgodo.v0

# clear apt cache and remove unnecessary packages
# RUN apt-get autoclean && apt-get -y autoremove

WORKDIR $GOPATH
EXPOSE 9000
