pipeline {
    agent any
    stages {
        stage ('Initialize') {
            steps {
                def mvnHome = tool 'M3'
                sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
                '''
            }
        }

        stage ('Build') {
            steps {
                def mvnHome = tool 'M3'
                sh 'clean install package' 
            }
            
        }
    }
}
