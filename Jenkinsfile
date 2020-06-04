pipeline {
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
            agent{ dockerfile true }
            steps {
                node{
                    checkout scm
                    def customImage = docker.build("my-image:${env.BUILD_ID}")
                    customImage.push('latest')
          
                }
            }
        }
                  
            
            }
    }


