pipeline {
    agent any

    // Option 1: REMOVE environment block completely
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Sagar-12218728/docker.git'
            }
        }
        
        stage('Build') {
            steps {
                sh 'echo "Building the project..."'
                sh 'make'
            }
        }
        
        stage('Test') {
            steps {
                sh 'echo "Running tests..."'
                sh 'make test'
            }
        }
        
        stage('Deploy') {
            steps {
                sh 'echo "Deploying the project..."'
                sh './deploy.sh'
            }
        }
    }
    
    post {
        success {
            echo 'Build completed successfully!'
        }
        failure {
            echo 'Build failed!'
        }
    }
}
