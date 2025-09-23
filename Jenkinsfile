pipeline {
    agent any

    environment {
        IMAGE_NAME = "netflix"
        DOCKER_REGISTRY = "docker.io/shaikmustafa"
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/your-repo/app.git'
            }
        }

        stage('Build') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
            }
        }

        stage('Test') {
            steps {
                sh 'docker run --rm $IMAGE_NAME npm test' // Adjust for your app
            }
        }

        stage('Deploy') {
            steps {
                withDockerRegistry([credentialsId: 'docker-creds', url: '']) {
                    sh 'docker tag $IMAGE_NAME $DOCKER_REGISTRY/$IMAGE_NAME:latest'
                    sh 'docker push $DOCKER_REGISTRY/$IMAGE_NAME:latest'
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
