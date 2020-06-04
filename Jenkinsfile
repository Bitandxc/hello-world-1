pipeline {
   environment {
      registry = "bguha2501/jenkinspipelinedocker"
      registryCredential = 'dockerhub'
      dockerImage = ''
    }
    agent any
    tools {
        maven 'M3'
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
            steps {
                script{ 
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


