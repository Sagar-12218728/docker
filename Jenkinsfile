pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout from the 'main' branch (fixing your error)
                git branch: 'main', url: 'https://github.com/Sagar-12218728/docker.git'
            }
        }
        
        stage('Build') {
            steps {
                // Example build commands (you can replace with actual build steps)
                sh 'echo "Building the project..."'
                sh 'make'   // (make sure Makefile exists, or change this)
            }
        }
        
        stage('Test') {
            steps {
                // Example test commands
                sh 'echo "Running tests..."'
                sh 'make test'   // (again, make sure you have test scripts, or change)
            }
        }
        
        stage('Deploy') {
            steps {
                // Example deploy commands
                sh 'echo "Deploying the project..."'
                sh './deploy.sh'  // (only if deploy.sh exists, otherwise replace)
            }
        }
    }
    
    post {
        success {
            echo '✅ Build completed successfully!'
        }
        failure {
            echo '❌ Build failed!'
        }
    }
}
