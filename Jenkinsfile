pipeline {
    agent any
    stages {
        stage ('Initialize') {
            steps {
                script{
                def mvnHome = tool 'M3'
                withEnv( ["PATH+MAVEN=${tool mvn_version}/bin"] ){
                sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
                '''
                }
                }
            }
        }

        stage ('Build') {
            steps {
                
                sh 'clean install package' 
                
                
            }
            
        }
    }
}
