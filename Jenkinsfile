pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/sumanthtony/Jenkins_Automation.git'
            }
        }

        stage('Build') {
            steps {
                sh 'docker build -t image1 .'
            }
        }

        stage('Test') {
            steps {
                sh 'docker run --rm npm test' // Adjust for your app
            }
        }

        stage('Deploy') {
            steps {
                withDockerRegistry([credentialsId: 'Docker-id', url: 'https://index.docker.io/v1/']) {
                    sh 'docker tag image1 sumanthtony/devops:demoimg'
                    sh 'docker push sumanthtony/devops:demoimg'
                }
            }
        }
    }

    post {
        success {
            echo 'Pipeline executed successfully!'
        }
        failure {
            echo 'Pipeline failed. Check logs.'
        }
    }
}
