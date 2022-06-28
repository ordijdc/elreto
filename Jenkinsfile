
pipeline {
    agent any
environment {
	AWS_ACCESS_KEY_ID="AKIA3IT5FKBP7PC3OOEI"
	AWS_SECRET_ACCESS_KEY=credentials('b333e043-2bf3-4e73-b7c3-ae0b0e3d0ebf')
}
    stages {
	stage('Terraform init') {
				steps {
					echo 'Terraform init...'
                sh 'echo "AWS CREDs $AWS_ACCESS_KEY_ID / $AWS_SECRET_ACCESS_KEY"' 
			
		sh 'chmod 777 /home/jenkins/workspace/grupo2_ordijdc_Reto_development/showSecret.sh'
		sh '/home/jenkins/workspace/grupo2_ordijdc_Reto_development/showSecret.sh $AWS_ACCESS_KEY_ID'
		sh '/home/jenkins/workspace/grupo2_ordijdc_Reto_development/showSecret.sh $AWS_SECRET_ACCESS_KEY' 
		
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
					sh "terraform destroy -target=aws_s3_bucket.reto.mapfre-gitops-ordijdc"
					sh "terraform apply -auto-approve"
            }
        }
    }
}
