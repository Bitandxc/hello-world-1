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
               echo 'Starting building docker Image'
               script {
                    dockerImage = docker.build registry + ":$BUILD_NUMBER"
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


