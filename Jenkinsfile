pipeline {
     agent any
     
     stages {

        stage('PLAN') {
               steps {     
                   sh './webserver-terraform terraform init'
                   sh './webserver-terraform terraform plan'
	          }
	     }
     }
}
