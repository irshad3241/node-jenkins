pipeline {
    agent any

    environment {
        IMAGE_NAME = "hey-irshad"
        IMAGE_TAG = "latest"
        CONTAINER_NAME = "hey-irshad-container"
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/irshad3241/node-jenkins.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh "docker build -t ${IMAGE_NAME}:${IMAGE_TAG} ."
            }
        }

        stage('Deploy') {
            steps {
                // Stop and remove existing container if running
                sh "docker rm -f $(docker ps -q)"

                // Run the new container
                sh "docker run -d --name ${CONTAINER_NAME} -p 3000:3000 ${IMAGE_NAME}:${IMAGE_TAG}"
            }
        }
    }

    post {
        success {
            echo "Deployment completed successfully! Access at http://<jenkins-host>:3000"
        }
        failure {
            echo "Deployment failed!"
        }
    }
}