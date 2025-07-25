pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git url: 'https://github.com/sunil338/terraform-jenkins-integration.git', branch: 'master'
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Validate') {
            steps {
                sh 'terraform validate'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -out=tfplan.out'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve tfplan.out'
            }
        }

        stage('Verify Output') {
            steps {
                sh 'ls -la'
                sh 'ls -la dir1'
                sh 'ls -la dir2'
                sh 'cat file1.txt'
                sh 'cat file2.txt'
            }
        }
    }
}

