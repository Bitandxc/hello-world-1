pipeline {
   environment {
      Image = 'bguha2501/jenkinspipelinedocker'
      REGISTRY = 'https://hub.docker.com/'
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
                  image = docker.build("${IMAGE}", "-f Dockerfile .")
                  image.push()
               }
          
                }
            }
      
        
    
      }
            
   }


