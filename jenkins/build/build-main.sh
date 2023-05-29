#!/bin/bash


cd frontend 
echo "BUILDING FRONTEND..."
docker build -t dockerhub/frontend:${BRANCH_NAME}_${BUILD_ID} .
echo "FRONTEND BUILD COMPLETED."

cd ../backend
echo "BUILDING BACKEND..."
docker build -t dockerhub/backend:${BRANCH_NAME}_${BUILD_ID} .
echo "BACKEND BUILD COMPLETED."

cd ..
echo "BUILDING APP.."
docker build -t dockerhub/app:${BRANCH_NAME}_${BUILD_ID} .
echo "APP BUILD COMPLETED."


