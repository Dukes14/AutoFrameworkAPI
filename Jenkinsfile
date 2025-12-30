pipeline {
    agent any

    tools {
        maven 'Maven3'
        jdk 'JDK11'
    }

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build & Test') {
            steps {
                dir('api-automation-framework') {
                    sh 'mvn clean test'
                }
            }
        }
    }

    post {
        always {
            dir('api-automation-framework') {
                archiveArtifacts artifacts: '**/target/*.xml', fingerprint: true
            }
        }
        success {
            echo '✅ API Automation executed successfully'
        }
        failure {
            echo '❌ API Automation failed'
        }
    }
}
