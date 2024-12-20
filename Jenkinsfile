pipeline {
    agent any 

    stages {
        stage('Checkout Code') {
            steps {
                // Pull the latest code from the repository
                git branch: 'main', url: 'https://github.com/prekshithakr/Jenkins'
            }
        }

        stage('Install Dependencies') {
            steps {
                 sh 'pip install -r requirements.txt' 
            }
        }

        stage('Build') {
            steps {
                // Build the project (e.g., for JavaScript or other languages)
                sh 'npm run build' // Adjust this based on your project's build command
            }
        }

        stage('Test') {
            steps {
                sh 'pytest'  
            }
        }

       
        stage('Deploy') {
            steps {
                // Deploy to a server or container
                echo 'Deploying application...' 
                // Example: Deploying Docker container
                sh 'docker build -t my-app:latest .'
                sh 'docker run --name pythonapp my-app:latest'
            }
        }
    }

    post {
        always {
            echo 'Pipeline execution completed.'
        }
        success {
            echo 'Pipeline succeeded!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
