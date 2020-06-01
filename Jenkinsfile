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
                    clean install package
                    'mvn -f pom.xml clean install'
                '''
                }
                }
            }
    }


