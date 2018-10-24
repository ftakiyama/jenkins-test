pipeline {
  agent any
  stages {
    stage('Environment: Test') {
      when {
        anyOf {
          environment name: 'target_env', value: 'test'
          environment name: 'target_env', value: 'both'
        }
      }
      agent {
        docker {
          image "node:8.12.0"
        }
      }
      stages {
        stage('Deploy') {
          steps {
            echo 'Deploying to Test (174)'
          }
        }
      }
    }
    stage('Environment: Dev') {
      when {
        anyOf {
          environment name: 'target_env', value: 'development'
          environment name: 'target_env', value: 'both'
        }
      }
      agent {
        docker {
          image "node:6.14.4"
        }
      }
      stages {
        stage('Deploy') {
          steps {
            echo 'Deploying to Test (178)'
          }
        }
      }
    }
  }
}
