pipeline {
    agent any

    environment {
        TF_WORKSPACE = "-dev"  // Set Terraform Cloud workspace
    }

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'terraform-provisioning', url: 'https://github.com/Aayush99Sharma/ChatApp-CI-CD-Pipeline.git'
            }
        }

        stage('Select Terraform Workspace') {
            steps {
                sh '''
                terraform workspace list | grep -q "\-dev" && terraform workspace select -dev || terraform workspace new -dev
                '''
            }
        }

        stage('Setup Terraform') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }

    post {
        success {
            echo "Terraform Plan & Apply Completed Successfully!"
        }
        failure {
            echo "Terraform Pipeline Failed!"
        }
    }
}
