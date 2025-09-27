
pipeline {
    agent any
    stages {
        stage ("Code") {
            steps{
                git branch: 'main', url: 'https://github.com/sumanthtony/Jenkins_Automation.git'
            }
        }
        stage ("Build") {
            steps{
                sh 'docker build -t image1:latest .'
            }
        }
        stage ("Test") {
            steps{
                sh 'echo "Running tests..."'
            }
        }
        stage ("Deploy") {
            steps{
                sh 'docker run -itd --name cont-2 -p 2222:3000 image1:latest'
            }
        }
    }
}
