def tfvars = "./vars/webserver.tfvars"

pipeline {
     agent any
     
     stages {

        stage('PLAN') {
               steps {
                   dir('webserver-terraform'){      
                    sh 'terraform init'
                    sh "terraform plan -var-file=${tfvars}"
                   }
	          }
	     }
     }
}
