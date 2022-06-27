
pipeline {
    agent any

    stages {
        stage('Terraform plan') {
				steps {
					echo 'Terraform plan...'
					sh "terraform plan"
            }
        }
	    
        stage('Terraform apply') {
			when ( branch 'main' )
				steps {
					echo 'Terraform applying..'
					sh "terraform appl"
            }
        }
    }
}
