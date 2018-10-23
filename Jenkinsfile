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
        sh "bash -c \" source ./bla.sh ${MYPARAM}\""
      }
    }
  }
}
