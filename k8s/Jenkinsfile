pipeline {
    agent any
    
    tools {
        terraform 'terraform'
    }
    stages {
        stage ("checkout from GIT") {
            steps {
                git branch: 'master', credentialsId: '40ea62cc-7d09-4e45-bf21-a99d948399c3', url: 'https://github.com/venub7/devops-project.git'
            }
        }
        stage ("terraform init") {
            steps {
                echo 'terraform init'
            }
        }
        stage ("terraform fmt") {
            steps {
                echo 'terraform fmt'
            }
        }
        stage ("terraform validate") {
            steps {
                echo 'terraform validate'
            }
        }
        stage ("terrafrom plan") {
            steps {
                echo 'terraform plan '
            }
        }
        stage ("terraform apply") {
            steps {
                echo 'terraform apply --auto-approve'
            }
        }
    }
}
