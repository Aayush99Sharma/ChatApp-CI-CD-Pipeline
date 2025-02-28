pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'terraform-provisioning', url: 'https://github.com/Aayush99Sharma/ChatApp-CI-CD-Pipeline.git'
            }
        }
        stage('Setup Terraform') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Select Terraform Workspace') {
            steps {
                sh 'terraform workspace select -dev || terraform workspace new -dev'
            }
        }
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply'
            }
        }
    }
}
