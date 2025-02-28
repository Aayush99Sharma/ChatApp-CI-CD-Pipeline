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
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -var-file="terraform.tfvars"'
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply'
            }
        }
    }
}
