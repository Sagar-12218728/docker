pipeline {
    agent any

    stages {
        stage('Trigger Remote Job') {
            steps {
                script {
                    // Print the message to the Jenkins console
                    echo 'Hello, how can I help?'

                    // Define the Jenkins URL and token
                    def jenkinsUrl = 'http://localhost:8080/job/chat_bot_ci/build?token=chatbot_build_trigger'

                    // Trigger the remote job using curl with error handling
                    try {
                        sh """
                        curl -X POST ${jenkinsUrl} || {
                            echo 'Failed to trigger the job';
                            exit 1;
                        }
                        """
                    } catch (Exception e) {
                        // Handle the exception if curl fails
                        echo "Error: ${e.message}"
                        currentBuild.result = 'FAILURE'
                    }
                }
            }
        }
    }
}
