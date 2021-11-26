FROM golang:1.16

LABEL maintainer="Chengkun Kang <460876880@qq.com>"

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
    && go get -u google.golang.org/grpc

# Install node
ENV NODE_VERSION "14.18.0"
ENV NODE_ZIP "node-v$NODE_VERSION-linux-x64.tar.gz"

RUN curl -SLO https://nodejs.org/dist/v$NODE_VERSION/$NODE_ZIP && \
    tar -xzf "$NODE_ZIP" -C /usr/local --strip-components 1 && \
    rm "$NODE_ZIP" && \
    node -v && npm -v && npm install -g yarn && revel version

# clear apt cache and remove unnecessary packages
# RUN apt-get autoclean && apt-get -y autoremove

WORKDIR $GOPATH
EXPOSE 9000
