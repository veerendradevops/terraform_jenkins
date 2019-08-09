#!groovy

pipeline {
    agent any
   
    parameters {
        choice(name: 'env', choices: 'DEV_PRACTICE\nTEST_PRACTICE', description: 'Select Environment')
        choice(name: 'action', choices: 'init\nplan\napply\nplan-destroy\ndestroy', description: 'Select Action')
    }
    stages {
	
        stage('terraform') {
            environment {
                LAYER = "${params.env}"
                INFRA_ACTION = "${params.action}"
            }
      
		 steps {

                script {
                    if (params.env == 'DEV_PRACTICE')
                        sh "make $INFRA_ACTION"
                }
            }
		
        }
    }//stages
 
}//pipeline