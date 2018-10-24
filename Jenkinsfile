pipeline {
  agent {
    docker {
      image "${params.agent}"
      args '-p 3000:"3000'
    }
  }
  stages {
    stage('Setup') {
      steps {
        sh 'chmod +x ./bla.sh'
      }
    }
    stage('Deploy: test') {
      when {
        anyOf {
          environment name: 'target_env', value: 'test'
          environment name: 'target_env', value: 'both'
        }
      }
      steps {
        echo 'Deploying to Test (174)'
      }
    }
    stage('Deploy: development') {
      when {
        anyOf {
          environment name: 'target_env', value: 'development'
          environment name: 'target_env', value: 'both'
        }
      }
      steps {
        echo 'Deploying to Development (178)'
      }
    }
  }
}
