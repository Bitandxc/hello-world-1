pipeline {
   environment {
      registry = 'bguha2501/jenkinspipelinedocker'
      registrycredential = 'dockerhub'
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
        stage ('Docker Build'){
            steps {
               script {
                   def customImage = docker.build("my-image:${env.BUILD_ID}")
               }
               }
                }
      
      
        
    
      }
            
   }


