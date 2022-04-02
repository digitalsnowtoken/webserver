pipeline {
     agent any
     
     stages {

        stage('PLAN') {
               steps {
               sh 'cd webserver'     
               sh 'terraform init'
               sh 'terraform plan'
	          }
	     }
     }
}
