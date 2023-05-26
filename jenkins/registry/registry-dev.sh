#!/bin/bash

echo "First docker login !"
echo ${DOCKERHUB_WRITE_PSW} | docker login -u ${DOCKERHUB_WRITE_USR} --password-stdin

echo "PUSHING FRONTEND..."
docker push dockerhub/frontend-dev:${BRANCH_NAME}_${BUILD_ID} 
echo "PUSHED FRONTEND."

echo "PUSHING BACKEND..."
docker push dockerhub/backend-dev:${BRANCH_NAME}_${BUILD_ID} 
echo "PUSHED BACKEND."

echo "PUSHING APP..."
docker push dockerhub/app-dev:${BRANCH_NAME}_${BUILD_ID} 
echo "PUSHED APP."