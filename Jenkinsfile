pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git url: 'https://github.com/prekshithakr/Jenkins.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('python-app:latest')
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    def container = docker.image('python-app:latest')
                    container.run('-d -p 5000:5000')
                }
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully with Docker!'
        }
        failure {
            echo 'Pipeline failed. Check logs for details.'
        }
    }
}
