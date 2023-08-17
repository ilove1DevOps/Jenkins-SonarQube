pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Check out code from your SCM (e.g., Git)
                git branch: 'main', url: 'https://github.com/your-username/your-repo.git'
            }
        }

        stage('Build') {
            steps {
                // You can add build steps here if needed
            }
        }

        stage('Print Hello World') {
            steps {
                echo "Hello, World!"
            }
        }
    }

    post {
        always {
            // This block will run after every stage
            // You can put cleanup or notification steps here
        }
        success {
            // This block will run only if the pipeline succeeds
            // You can put deployment or notification steps here
        }
        failure {
            // This block will run only if the pipeline fails
            // You can put error handling or notification steps here
        }
    }
}
