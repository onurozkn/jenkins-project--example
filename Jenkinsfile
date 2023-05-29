pipeline {
  agent any
  environment { 
    DOCKERHUB_WRITE = credentials('arezdiez-dockerhub')
    DOCKERHUB_READ = credentials('jenkins-read')
  }
  stages {
    stage('Parallel Stages Build') {
      parallel {
        stage('main') {
          when {
            branch 'main'
          }
          stages {
            stage('Build Projects') {
              steps {
                echo 'build is starting...'
                echo "chmod +x -R ${env.WORKSPACE}"
                echo './jenkins/build/build-main.sh'
                echo 'build is success'
              }
            }
            stage('Build Images And Registery') {
              steps {
                echo 'Preparing images...'
                echo './jenkins/registry/registry-main.sh'
                echo 'Images Pushed'
              }
            }
            stage('Update Server services.') {
              steps {
                echo 'Update is starting...'
                echo './jenkins/update/update-main.sh'
                echo 'Update is success.'
              }
            }
          }
        }
      }
    }
  }
}