#!/bin/bash
#Sleep yerleştirildi : Pull ve update işlemlerini aynı anda yaptığı için patlıyor. | TR
echo "First is first, login docker !"
echo $DOCKERHUB_READ_PSW | docker login -u $DOCKERHUB_READ_USR --password-stdin

sleep 1
docker service update --with-registry-auth --image dockerhub/frontend:${BRANCH_NAME}_${BUILD_ID} dev_frontend 

sleep 1
docker service update --with-registry-auth --image dockerhub/backend:${BRANCH_NAME}_${BUILD_ID} dev_backend  

sleep 1
docker service update --with-registry-auth --image dockerhub/app:${BRANCH_NAME}_${BUILD_ID} dev_app  