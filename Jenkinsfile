pipeline {
    agent any
    tools{
        jdk '21'
        maven '3.9.14'
    }

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
                sh 'echo "Current JAVA_HOME: $JAVA_HOME" && mvn -version'
                sh 'cd app/demo && mvn clean install'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests'
                sh 'echo Test successful'
                sh 'cd app/demo && mvn test'
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
