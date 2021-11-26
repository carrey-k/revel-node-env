#!/bin/bash

plain_image_version=1.0.3
node_image_version=1.0.3
plain_dockerfile_path=./plain/go-1.16.x
node_dockerfile_path=./node/go-1.16.x/node-14.18.0

# docker login
docker login your-custom-reg-addr.your-org.com -u reg-user-name -p reg-user-pwd

# build the docker image
docker build ${plain_dockerfile_path} -t your-custom-reg-addr.your-org.com/revel:${plain_image_version} -t your-custom-reg-addr.your-org.com/revel:latest
docker build ${node_dockerfile_path} -t your-custom-reg-addr.your-org.com/revel-node:${node_image_version} -t your-custom-reg-addr.your-org.com/revel-node:latest

# push images to docker hub
docker push your-custom-reg-addr.your-org.com/revel:latest
docker push your-custom-reg-addr.your-org.com/revel-node:latest
docker push your-custom-reg-addr.your-org.com/revel:${plain_image_version}
docker push your-custom-reg-addr.your-org.com/revel-node:${node_image_version}

# remove from local registry
# docker rmi your-custom-reg-addr.your-org.com/revel:latest
# docker rmi your-custom-reg-addr.your-org.com/revel-node:latest
# docker rmi your-custom-reg-addr.your-org.com/revel:${plain_image_version}
# docker rmi your-custom-reg-addr.your-org.com/revel-node:${node_image_version}
