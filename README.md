# jenkins-project--example

## Jenkins Stages

This project is built and deployed using Jenkins pipelines. The Jenkins pipeline includes the following stages:

1. Build frontend and backend images
2. Push images to Docker Hub
3. Build app image
4. Push app image to Docker Hub
5. Deploy app container

Each stage is defined in a separate Jenkinsfile and can be run independently or as part of a larger pipeline.

For more information about this project, see the documentation in the `docs` directory.

