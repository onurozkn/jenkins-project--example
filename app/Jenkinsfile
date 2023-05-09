pipeline {
  agent any
  environment { 
    DOCKERHUB_WRITE = credentials('dockerhub')
    DOCKERHUB_READ = credentials('jenkins-read')
  }
  stages {
    stage('Parallel Stages Build') {
      parallel {
        stage('Dev') {
          when {
            branch 'Dev'
          }
          stages {
            stage('Build Projects') {
              steps {
                echo 'build is starting...'
                sh './jenkins/build/build-dev.sh'
                echo 'build is success'
              }
            }
            stage('Build Images And Registery') {
              steps {
                echo 'Preparing images...'
                sh './jenkins/registry/registry-dev.sh'
                echo 'Images Pushed'
              }
            }
            stage('Update Server services.') {
              steps {
                echo 'Update is starting...'
                sh './jenkins/update/update-dev.sh'
                echo 'Update is success.'
              }
            }
          }
        }
      }
    }
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
