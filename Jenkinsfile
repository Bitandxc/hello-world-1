pipeline {
   environment {
      registry = 'bguha2501/jenkinspipelinedocker'
      registrycredential = 'Dockerhub'
      dockerImage= ''
    }
    agent any
    tools {
        maven 'M3'
    }
  
    stages {
         stage ('Build'){
             steps {
                sh '''
                    mvn -f pom.xml clean install package
                   '''
                }
                }
    
        stage ('Docker Build'){
            steps {
               sh "docker build -t registry + ":$BUILD_NUMBER" ."
                  }
                }
        }
        stage('Deploy Image') {
            steps{
             script {
               docker.withRegistry( '', registryCredential ) {
               dockerImage.push()
          }
        }
      }
    }
 
      
        
    
      }
            
   }


