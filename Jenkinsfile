pipeline {
    agent any
    
    environment {
        // Define any environment variables you need here
        // Example: PATH = "/usr/local/bin:${env.PATH}"
    }
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout your source code from the repository
                git 'https://github.com/Sagar-12218728/Docker_Project.git'
            }
        }
        
        stage('Build') {
            steps {
                // Build your project (replace with your actual build commands)
                sh 'echo "Building the project..."'
                sh 'make'  // or your build command
            }
        }
        
        stage('Test') {
            steps {
                // Run tests (replace with your test command)
                sh 'echo "Running tests..."'
                sh 'make test'  // or your test command
            }
        }
        
        stage('Deploy') {
            steps {
                // Deploy your project (replace with your actual deployment commands)
                sh 'echo "Deploying the project..."'
                sh './deploy.sh'  // or your deployment command
            }
        }
    }
    
    post {
        success {
            // Actions to take on successful build
            echo 'Build completed successfully!'
        }
        failure {
            // Actions to take on failed build
            echo 'Build failed!'
        }
    }
}
