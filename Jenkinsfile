pipeline {
    agent any

    tools {
        maven 'MAVEN_3_9'
        jdk 'applejdk-21.0.8.9.1.jdk'
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
                archiveArtifacts artifacts: 'TestReport/ExtentReport.html',
                                         fingerprint: true
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
