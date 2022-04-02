pipeline {
     agent any
     
     stages {

        stage('PLAN') {
               steps {
               sh 'cd webserver-terraform'     
               sh 'terraform init'
               sh 'terraform plan'
	          }
	     }
     }
}
