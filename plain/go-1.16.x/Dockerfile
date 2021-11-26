FROM golang:1.16

LABEL maintainer="460876880@qq.com"

ENV GOPATH /go
# ENV HTTP_PROXY "http://your-own-proxy-addr.your-org.com:3128"
# ENV HTTPS_PROXY "http://your-own-proxy-addr.your-org.com:3128"

RUN set -x \
    && go get -u -v github.com/revel/revel \
    && go get -u -v github.com/revel/cmd \
    && go get -u -v github.com/revel/config \
    && go get -u -v github.com/revel/cron \
    && go get -u -v github.com/revel/modules \
    && go get -u github.com/jinzhu/copier \
    && go get -u github.com/golang/protobuf/proto \
    && go get -u github.com/globalsign/mgo/bson \
    && go get -u github.com/lujiacn/gtf \
    && go get -u github.com/lujiacn/revpage \
    && go get -u github.com/lujiacn/utils \
    && go get -u github.com/lujiacn/revauth \
    && go get -u github.com/lujiacn/revstatic \
    && go get -u github.com/lujiacn/revel-csrf \
    && go get -u github.com/teris-io/shortid \ 
    && go get -u golang.org/x/net \
    && go get -u golang.org/x/sys \
    && go get -u golang.org/x/tools \
    && go get -u google.golang.org/grpc \
    && go get -u github.com/lujiacn/mgodo

# clear apt cache and remove unnecessary packages
# RUN apt-get autoclean && apt-get -y autoremove

WORKDIR $GOPATH
EXPOSE 9000
