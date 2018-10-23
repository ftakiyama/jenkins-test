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
        echo "Here it is"
        echo ${MYPARAM}
        sh 'chmod +x ./bla.sh'
        sh './bla.sh ${MYPARAM}'
      }
    }
  }
}
