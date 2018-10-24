pipeline {
  agent {
    docker {
      image 'node:6-alpine'
      args '-p 3000:"3000'
    }
  }
  stages {
    stage('Test') {
      steps {
        sh 'chmod +x ./bla.sh'
        echo "params.myparam: ${params.myparam}"
        withEnv(["myenv=${params.myparam}"]) {
          sh './bla.sh'
        }
      }
    }
  }
}
