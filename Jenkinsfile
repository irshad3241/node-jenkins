pipeline { 
    agent {
        docker {
            image 'node:latest'
        }
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/irshad3241/node-jenkins.git'
            }
        }

        stage('Run') {
            steps {
                sh 'node app.js'
            }
        }
    }
}