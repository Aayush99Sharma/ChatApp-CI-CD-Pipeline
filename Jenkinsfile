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
                if terraform workspace list | grep -q "-dev"; then
                    terraform workspace select -dev
                else
                    terraform workspace new -dev
                fi
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
