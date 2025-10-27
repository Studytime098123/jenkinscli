pipeline {
    agent any
    
    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION    = 'ap-south-1'
    }

    stages {
        stage('git clone') {
            steps {
                echo 'clonning ttthe github account'
                git branch: 'main', url: 'https://github.com/Studytime098123/jenkinscli.git'
            }
        }
        
        stage('terraform init') {
            steps {
                echo 'intilizing the terraform'
                sh "terraform init"
            }
        }
        
        stage('terraform plan') {
            steps {
                echo 'terraform plan'
                sh "terraform plan -out=tfplan"
            }
        }
        
        stage('terraform apply') {
            steps {
                echo 'terraform apply'
                sh "terraform apply -auto-approve tfplan"
            }
        }

        stage('terraform destroy') {
            steps {
                echo 'terraform destroy'
                sh "terraform destroy -auto-approve"
            }
        }
    }
}
