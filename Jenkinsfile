
pipeline {
    agent any
environment {
        AWS_CREDS = credentials('b333e043-2bf3-4e73-b7c3-ae0b0e3d0ebf')
	AWS_ACCESS_KEY_ID="$AWS_CREDS_USR"
	AWS_SECRET_ACCESS_KEY="$AWS_CREDS_PSW"
}
    stages {
	stage('Terraform init') {
				steps {
					echo 'Terraform init...'					
                sh 'echo "AWS CREDs $AWS_CREDS_USR / $AWS_CREDS_PSW"'                
					sh "terraform init"
            }
        }
        stage('Terraform plan') {
				steps {
					echo 'Terraform plan...'
					sh "terraform plan"
            }
        }
	    
        stage('Terraform apply') {
			when {
				branch 'main' 
			}
				steps {
					echo 'Terraform applying..'
					sh "terraform appl"
            }
        }
    }
}
