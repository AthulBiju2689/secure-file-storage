pipeline {

    agent any

    stages {

        stage('Checkout') {
            steps {
                echo 'Checking out source code...'
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                sh 'docker compose -p secure-file-storage build'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Starting application...'
                sh 'docker compose up -p secure-file-storage up -d'
            }
        }

        stage('Check Containers') {
            steps {
                echo 'Checking container status...'
                sh 'docker compose -p secure-file-storage ps'
            }
        }

        stage('Health Check') {
            steps {
                echo 'Checking Django application...'
                sh '''
                    sleep 10
                    curl -f http://localhost:8000/
                '''
            }
        }
    }

    post {

        success {
            echo 'Deployment successful!'
        }

        failure {
            echo 'Deployment failed!'
        }

        always {
            echo 'Pipeline completed.'
        }
    }
}
