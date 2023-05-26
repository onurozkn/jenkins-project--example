#!/bin/bash


cd frontend 
echo "BUILDING FRONTEND..."
docker build -t dockerhub/frontend-dev:${BRANCH_NAME}_${BUILD_ID} .
echo "FRONTEND BUILD COMPLETED."

cd ../backend
echo "BUILDING BACKEND..."
docker build -t dockerhub/backend-dev:${BRANCH_NAME}_${BUILD_ID} .
echo "BACKEND BUILD COMPLETED."

cd ..
echo "BUILDING APP.."
docker build -t dockerhub/app-dev:${BRANCH_NAME}_${BUILD_ID} .
echo "APP BUILD COMPLETED."
