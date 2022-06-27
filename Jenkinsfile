
pipeline {
    agent any

    stages {
        stage('Terraform plan') {
				steps {
					echo 'Terraform planning..'
            }
        }
        stage('Terraform apply') {
			when ( branch 'main' )
				steps {
					echo 'Terraform applying..'
            }
        }
    }
}
