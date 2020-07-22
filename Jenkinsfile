pipeline {
  agent any
  stages {
    stage('buz buz') {
      steps {
        echo 'hello hello response'
        archiveArtifacts(artifacts: 'target/*.jar', fingerprint: true)
        sh '''echo I am a $Buzz
./jenkins/build.sh'''
      }
    }

    stage('bes bes') {
      parallel {
        stage('Test01') {
          steps {
            echo 'Love Jenkins'
            junit '**/surfire-report/**/*'
          }
        }

        stage('Test 2') {
          steps {
            echo 'La la la'
          }
        }

      }
    }

  }
  environment {
    Buzz = 'Worker'
  }
}