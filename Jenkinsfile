pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out code from GitHub'
            }
        }

        stage('Build') {
            steps {
                echo 'Building application'
                sh 'echo Build started'
                mvn clean install
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests'
                sh 'echo Test successful'
                mvn test
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying application'
                sh 'echo Deployment done'
            }
        }
    }

    post {
        always {
            echo 'Pipeline execution completed'
        }
        success {
            echo 'Pipeline executed successfully'
        }
        failure {
            echo 'Pipeline failed'
        }
    }
}
