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
                // Install dependencies (example for Node.js or Python)
                sh 'npm install'  // For Node.js projects
                // sh 'pip install -r requirements.txt'  // Uncomment for Python projects
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
                // Run tests
                sh 'npm test'  // For Node.js
                // sh 'pytest'  // Uncomment for Python tests
            }
        }

        stage('Archive Artifacts') {
            steps {
                // Save build artifacts for future reference or deployment
                archiveArtifacts artifacts: '**/dist/**/*', allowEmptyArchive: true
            }
        }

        stage('Deploy') {
            steps {
                // Deploy to a server or container
                echo 'Deploying application...' 
                // Example: Deploying Docker container
                sh 'docker build -t my-app:latest .'
                sh 'docker run -d -p 80:80 my-app:latest'
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
