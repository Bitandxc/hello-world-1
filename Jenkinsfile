pipeline {
    agent any
    tools {
        maven 'Maven 3.6.0'
        jdk 'jdk9'
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

        stage ('Build') {
            steps {
                sh 'clean install package' 
            }
            
        }
    }
}