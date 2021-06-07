pipeline {
  agent any
  stages {
    stage('Checkout Scm') {
      steps {
        git 'https://github.com/shakeel85331/movie-info-service.git'
      }
    }

    stage('Gradle Build') {
      steps {
         sh './gradlew clean build'
      }
    }
  }
}
