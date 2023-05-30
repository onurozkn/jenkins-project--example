pipeline {
  agent any
  environment { 
    PATH=/mnt/c/Users/sefa/Desktop/onur/jenkins-project/
    DOCKERHUB_WRITE = credentials('arezdiez')
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
                chmod +x 'jenkins/*'
                sh './jenkins/build/build-main.sh'
                echo 'build is success'
              }
            }
            stage('Build Images And Registery') {
              steps {
                echo 'Preparing images...'
                sh './jenkins/registry/registry-main.sh'
                echo 'Images Pushed'
              }
            }
            stage('Update Server services.') {
              steps {
                echo 'Update is starting...'
                sh './jenkins/update/update-main.sh'
                echo 'Update is success.'
              }
            }
          }
        }
      }
    }
  }
}