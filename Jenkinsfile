
pipeline {
    agent any
environment {
	AWS_ACCESS_KEY_ID="ordijdc@mapfre.com"
	AWS_SECRET_ACCESS_KEY=credentials('b333e043-2bf3-4e73-b7c3-ae0b0e3d0ebf')
}
    stages {
	stage('Terraform init') {
				steps {
					echo 'Terraform init...'
                sh 'echo "AWS CREDs $AWS_ACCESS_KEY_ID / $AWS_SECRET_ACCESS_KEY"' 
		sh 'showSecret $AWS_ACCESS_KEY_ID'
		sh '$AWS_SECRET_ACCESS_KEY' 
		
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
