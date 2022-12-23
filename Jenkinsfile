pipeline {
    agent any
    
    tools {
        maven "MAVEN3" 
        jdk "OracleJDK8"
    }

    stages {
        
        stage('Fetch  code'){
            steps{
                git branch: 'vp-rem' url: 'https://github.com/devopshydclub/vprofile-project.git'
            }
        }
        
        stage('Build') {
            steps {
                sh 'mvn install -DskipTests'
            }

            post {
                success {
                    echo 'Now Archiving'
                    archiveArtifacts artifacts: '**/target/*.war'
                }
            }
        }

        stage('Unit Test') {
            steps {
                sh 'mvn test'
            }
        }


    }


}