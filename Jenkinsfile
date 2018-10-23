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
        env.myparam="${MYPARAM}"
        sh 'chmod +x ./bla.sh'
        sh './bla.sh ${env.myparam}'
      }
    }
  }
}
