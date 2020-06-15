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
               sh '''
                    docker build -t ${registry} .
                  '''
                  }
                }
        
        stage('Deploy Image') {
            steps{
               withDockerRegistry([ credentialsId: ${registrycredential}, url: "https://hub.docker.com/repository/docker/bguha2501/jenkinspipelinedocker" ]){
                 sh '''
                 docker push ${registry}
            }
        }
      }
    }
 
            
} 


