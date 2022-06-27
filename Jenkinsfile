
pipeline {
    agent any

    stages {
	stage('Terraform init') {
				steps {
					echo 'Terraform init...'
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
