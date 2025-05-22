pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/Narenkarthik2004/Devops_Job_Portal.git'
            }
        }
        stage('Build and Deploy') {
            steps {
                sh './build.sh'
            }
        }
    }
}
