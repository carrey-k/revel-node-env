#!/bin/bash

plain_image_version=1.0.3
node_image_version=1.0.3
plain_dockerfile_path=./plain/go-1.16.x
node_dockerfile_path=./node/go-1.16.x/node-14.18.0

# build the docker image
echo
echo 'Build revel plain image...'
docker build ${plain_dockerfile_path} -t kangchengkun/revel:${plain_image_version} -t kangchengkun/revel:latest
echo
echo 'Build revel node image...'
docker build ${node_dockerfile_path} -t kangchengkun/revel-node:${node_image_version} -t kangchengkun/revel-node:latest

# push images to docker hub
echo
echo 'Push revel plain latest to docker registry...'
docker push kangchengkun/revel:latest
echo
echo 'Push revel node latest to docker registry...'
docker push kangchengkun/revel-node:latest
echo
echo 'Push revel plain to docker registry...'
docker push kangchengkun/revel:${plain_image_version}
echo
echo 'Push revel node latest to docker registry...'
docker push kangchengkun/revel-node:${node_image_version}

# remove from local registry
# docker rmi kangchengkun/revel:latest
# docker rmi kangchengkun/revel-node:latest
# docker rmi kangchengkun/revel:${plain_image_version}
# docker rmi kangchengkun/revel-node:${node_image_version}
