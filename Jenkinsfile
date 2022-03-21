

pipeline {
    agent any
    tools {
        jdk 'jdk1.8'
        git 'default'
        maven 'maven'
        terraform 'terraform'
    }
    environment {
        AWS_ACCESS_KEY_ID     = credentials('jenkins-aws-secret-key-id')
        AWS_SECRET_ACCESS_KEY = credentials('jenkins-aws-secret-access-key')
    }
    
    stages {
        stage('Build Started') {
            steps {
                echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
            }
        }
        stage('Cloning our Git') { 
            steps { 
                git 'https://github.com/pallem260497/Jenkins-Terraform.git' 
            }
        } 
        stage('list Git') { 
            steps { 
                sh 'ls -lart' 
                sh 'echo $VER'
            }
        }
		stage('Infra Provision with terraform') { 
            steps { 
                sh '''terraform init
                    terraform plan -out=terraformDevOps.plan
                    terraform apply --auto-approve
                    '''
            }
        }
			
    }
}
