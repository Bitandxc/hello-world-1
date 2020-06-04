pipeline {
    agent any
    tools {
        maven 'M3'
    }
    environment {
    registry = "bguha2501/jenkinspipelinedocker"
    dockerImage = ''
    }
    stages {
        stage ('Initialize') {
            steps {
                sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
                    '''
                    }
        }
         stage ('Build'){
             steps {
                sh '''
                    mvn -f pom.xml clean install package
                   '''
                }
                }
        stage ('Docker container creation'){
            agent{ dockerfile true }
            steps {
                script{
                    checkout scm
                    dockerImage = docker.build registry + ":$BUILD_NUMBER"
          
                }
            }
        }
      stage('Deploy Image') {
          steps{
            script {
               docker.withRegistry( '') {
               dockerImage.push()
               }
            }
          }
      }
            
            }
    }


